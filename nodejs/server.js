const express = require('express')
const app = express()
const port = 24001

app.get('/hello', (request, response) => {
  response.send('Hello from NodeJS+Express!')
})

app.listen(port, (err) => {
  if (err) {
    return console.log('Doomed!!', err)
  }

  console.log(`Server is listening on ${port}`)
})