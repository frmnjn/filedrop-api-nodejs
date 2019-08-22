const express = require("express");
var cors = require("cors");
const AWS = require("aws-sdk");
var s3 = new AWS.S3();
var S3Zipper = require("aws-s3-zipper");
var zipper = new S3Zipper({ bucket: "frmnjn-filedrop" });
var multer = require("multer");
var multerS3 = require("multer-s3");

let app = express();
app.use(cors());

//var
var upload = multer({
  storage: multerS3({
    s3: s3,
    bucket: "frmnjn-filedrop",
    acl: "public-read",
    contentType: multerS3.AUTO_CONTENT_TYPE,
    metadata: function(req, file, cb) {
      cb(null, { fieldName: file.fieldname });
    },
    key: function(req, file, cb) {
      cb(
        null,
        req.params.username +
          "/" +
          req.params.dropLink +
          "/" +
          Date.now().toString() +
          "-" +
          file.originalname
      );
      console.log("file " + file.originalname + " saved");
    }
  })
});

//routes
app.get("/", function(req, res) {
  res.json({ Message: "Hello World from filedrop api!" });
});

app.get("/download/:username/:folder", function(req, res) {
  res.set("content-type", "application/zip"); // optional
  zipper.streamZipDataTo(
    {
      pipe: res,
      folderName: req.params.username + "/" + req.params.folder,
      // startKey: "keyOfLastFileIZipped", // could keep null
      recursive: true
    },
    function(err, result) {
      if (err) console.error(err);
      else {
        console.log(result);
      }
    }
  );
  // response.download();
});

app.post("/drop/:username/:dropLink", upload.array("file", 3), function(
  req,
  res,
  next
) {
  //res.send('Successfully uploaded ' + req.files.length + ' files! '+res)
  res.json({
    success: true,
    data: req.files
  });
});

const port = 3333;

app.listen(port, () => console.log(`Server is listening on port: ${port}`));
