var express = require('express');
var app = express();

app.use('/', express.static(__dirname+'/client'));
app.listen(80, function() { console.log('listening')});

