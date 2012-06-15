express = require 'express'
app = express.createServer()

app.use require('connect-assets')()
app.set 'view engine', 'jade'

# Routes
app.get '/', (req, res) ->
  res.render 'index'

app.listen 8000, ->
  console.log "Express server listening on port #{app.address().port}."
