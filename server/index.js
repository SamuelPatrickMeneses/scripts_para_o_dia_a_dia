const express = require('express'); 
const { spawn } = require('node:child_process');
const ls = spawn('ls', [ process.argv[2]]);
let files;


const app = express();
console.log(process.env['PORT']);
app.set('port', process.env['PORT'] || 80);

app.setStatic = (rPach) => {
    'use strict';
    app.use(express.static(rPach)); 
};


ls.stdout.on('data', (data) => {
  files = data.toString().split('\n');
  var temp = '';
  files = files.map((e) => {
    let link = `<a href= "${encodeURIComponent(e)}" download>${e}</a><br><br><br>`;
    temp += link;
    return link;
  })
    app.get('/',(req, res) => {
      res.contentType('html')
      .send(temp);
    });
    app.setStatic(process.argv[2]);
    app.listen(app.get('port'),() => {
    console.log(`port: ${app.get('port')}`);
    });

});
