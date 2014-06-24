var express = require('express');
var app = express.createServer();

app.get('/hello', function(req, res){
    res.send('Hello World 2');
});

var server = app.listen(3000, function() {
    console.log('Listening on port %d', server.address().port);
});
