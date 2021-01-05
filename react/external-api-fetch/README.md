# External API with Fetch

### IP Example
Fetch - asynchronous action
Promise - pending, fulfilled, rejected

Goal - make a React app that will return the user's IP address
API - https://ipapi.co/api/?shell#location-of-clients-ip

fetch('someURL').then(function => handle response).then(function => handle payload)


To DO
User
- Title
- Button
- Content displayed after return of API

Developer
- Fetch to API
- Hold the IP address in state
- Render the state object to user


https://ipapi.co/json/

From the browser:
{
    "ip": "136.26.64.173",
    "version": "IPv4",
    "city": "San Diego",
    "region": "California",
    "region_code": "CA",
    "country": "US",
    "country_name": "United States",
    "country_code": "US",
    "country_code_iso3": "USA",
    "country_capital": "Washington",
    "country_tld": ".us",
    "continent_code": "NA",
    "in_eu": false,
    "postal": "Sign up to access",
    "latitude": "Sign up to access",
    "longitude": "Sign up to access",
    "timezone": "America/Los_Angeles",
    "utc_offset": "-0800",
    "country_calling_code": "+1",
    "currency": "USD",
    "currency_name": "Dollar",
    "languages": "en-US,es-US,haw,fr",
    "country_area": 9629091.0,
    "country_population": 327167434.0,
    "message": "Please message us at ipapi.co/trial for full access",
    "asn": "AS19165",
    "org": "WEBPASS"
}

App.js:
```javascript
import React, { Component } from 'react'

class App extends Component {
  constructor(props){
    super(props)
    this.state = {
      ipObject: ""
    }
  }

  getIp = () => {
    fetch('https://ipapi.co/json/')
    .then(response => {
      return response.json()
    })
    .then(payload => {
      this.setState({ ipObject: payload })
    })
    .catch(error => {
      console.log(error)
    })
  }


  render() {
    return (
      <>
        <h1>Get Your IP Address</h1>
        <button onClick={ this.getIp }>Click here</button>
        <p>IP:{ this.state.ipObject.ip }</p>
        <p>City:{ this.state.ipObject.city }</p>
      </>
    )
  }
}
export default App
```



### NASA Example

https://api.nasa.gov/mars-photos/api/v1/rovers/curiosity/photos?sol=1000&api_key=DEMO_KEY

TO DO
User
- Title
- Mars image
- Button that will give us different random Mars images

Developer
- State - hold by fetch payload
- Bring the payload ASAP when app loads
- Functions that picks a random Mars photo from state
- Function called on click
- Image styling

Process
- Read API docs
- Check the URL in the browser
- Copy data into a file to work locally during the scaffold phase
- Work out the UI with the data in a local file
- Add the fetch request and remove the local file

Note about API Keys
- It is very normal to have to sign up and receive a key to access an API
- Plug the key into the url that is in the fetch request
- BUT!!! Do not plug it in directly!
- API keys should not be added to GitHub, they should be in a separate file that is added to the .gitignore
