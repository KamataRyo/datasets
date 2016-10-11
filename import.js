var Converter = require('csvtojson').Converter
var request = require('request')
var converter = new Converter({})
converter.fromFile('./data/areas.csv', (err, results) => {
  for (var i = 0; i < results.length; i++) {
    request({
      method: 'POST',
      uri: 'http://localhost:9200/ldgourmet',
      body: JSON.stringify(results[i])
    })
  }
})
