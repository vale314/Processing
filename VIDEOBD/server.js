//server.js
const express = require('express');
const favicon = require('express-favicon');
const path = require('path');
const port = process.env.PORT || 9090;
const app = express();
const mysql = require('mysql2');
const fs = require("fs");

const connection = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    database: 'videos',
    password: '123456789'
})

connection.connect(err => {
    if (err) {
        return err;
    }
})

app.use(express.static(path.join(__dirname, 'files' , 'Home')));
app.use(express.static(path.join(__dirname, 'files' , 'Repro')));

app.get('/videos', function (req, res) {
    connection.query(
        'SELECT * FROM videos.video;',
        (err, results, fields) => {
            res.json({
                videos: results
            });
        }
    );
});

app.get('/video/*',(req,res)=>{
    console.log(req.url);
    
    const path = "."+req.url;
   
      const head = {
        'Accept-Ranges': 'bytes',
        'Content-Type': 'video/mp4',
      }
   
      res.writeHead(200, head)
      fs.createReadStream(path).pipe(res)
   
})

app.get('/play', function (req, res) {
    return res.sendFile(path.join(__dirname, 'files', 'Repro', 'Home.html'));
});

app.get('/', function (req, res) {
    res.sendFile(path.join(__dirname, 'files', 'Home', 'Home.html'));
});

app.listen(port, () => {
    console.log(`This port is connect on the port ${port}`);
});