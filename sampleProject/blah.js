const express = require('express')
const app = express()

app.get('/', function (req, res) {
  //TODO actually update this to do something useful
  res.send('Hello World!')
})

//FIXME replace the hard coded port wth an env var
app.listen(3000, function () {
  console.log('Example app listening on port 3000!')
})

