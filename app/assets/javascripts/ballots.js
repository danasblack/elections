
function lookup(address, callback) {
 
  var electionId = 2000;
  
  
  var req = gapi.client.request({
    'path' : '/civicinfo/v2/voterinfo',
    'params' : {'electionId' : electionId, 'address' : address}
  });
  req.execute(callback);
}


function renderResults(response, rawResponse) {
  var el = document.getElementById('results');
  if (!response || response.error) {
    el.appendChild(document.createTextNode(
      'Error while trying to fetch polling place'));
    return;
  }
  var normalizedAddress = response.normalizedInput.line1 + ' ' +
  response.normalizedInput.city + ', ' +
  response.normalizedInput.state + ' ' +
  response.normalizedInput.zip;
  if (response.pollingLocations.length > 0) {
    var pollingLocation = response.pollingLocations[0].address;
    var pollingAddress = pollingLocation.locationName + ', ' +
    pollingLocation.line1 + ' ' +
    pollingLocation.city + ', ' +
    pollingLocation.state + ' ' +
    pollingLocation.zip;
    var normEl = document.createElement('strong');
    normEl.appendChild(document.createTextNode(
      'Polling place for ' + normalizedAddress + ': '));
    el.appendChild(normEl);
    el.appendChild(document.createTextNode(pollingAddress));
  } else {
    el.appendChild(document.createTextNode(
      'Could not find polling place for ' + normalizedAddress));
  }
}


function load() {
  gapi.client.setApiKey('AIzaSyAlmS-sOsNhYRs0h5KAtOZKowV47JzzKxo');
  lookup('5100 South Cornell Ave. Chicago, IL', renderResults);
}