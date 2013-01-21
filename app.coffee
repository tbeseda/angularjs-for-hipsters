express = require 'express'

app = express()
app.use express.static(__dirname + '/public') # Set static asset source
app.use require('connect-assets')() # Create a compiled asset pipeline
app.set 'view engine', 'jade' # Set the template engine

# Routes
app.get '/', (req, res) ->
  res.render 'index'

app.listen 8000, ->
  console.log 'Express server listening on port 8000.'
