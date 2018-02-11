const express = require('express')
const app = express()

app.get('/bsbdirectory', (req, res) => res.send('Hello World from node.js'))

app.listen(3000, () => console.log('Example app listening on port 3000!'))