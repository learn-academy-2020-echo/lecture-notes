import React, { Component } from 'react'
// import marsRover from './nasaData.js'

class App extends Component {
  constructor(props){
    super(props)
    this.state = {
      nasa: null,
      pic: null
    }
  }

  componentDidMount(){
    fetch('https://api.nasa.gov/mars-photos/api/v1/rovers/curiosity/photos?sol=1000&api_key=DEMO_KEY')
    .then(resp => {
      return resp.json()
    })
    .then(payload => {
      console.log(payload)
      this.setState({ nasa: payload.photos, pic: payload.photos[0].img_src })
    })
    .catch(errors => {
      console.log(errors)
    })
  }

  getPic = () => {
    let randomNum = Math.floor(Math.random() * this.state.nasa.length)
    this.setState({ pic: this.state.nasa[randomNum].img_src })
  }


  render() {
    console.log(this.state.nasa)
    return (
      <>
        <h1>Mars Photos</h1>
        <button onClick={ this.getPic }>Click Me!</button>
        <br />
        { this.state.pic &&
          <div>
            <img src={ this.state.pic } style={{ height: '200px' }} alt='random Mars Curiosity' />
          </div>
        }
      </>
    )
  }
}
export default App
