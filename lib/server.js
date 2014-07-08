var express = require('express');
var app = express.createServer();

app.get('/hello', function(req, res){
    console.log("request " + req)
    res.send('Hello World 3');
});

var server = app.listen(6000, function() {
    console.log('Listening on port %d', server.address().port);
});
