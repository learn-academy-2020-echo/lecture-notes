import React, { Component } from 'react'
import Form from './components/Form'
import './App.css'

class App extends Component {
  constructor(props){
    super(props)
    this.state = {
      personData: null
    }
  }

  handleFormUpdate = (form) => {
    this.setState({ personData: form })
  }

  render() {
    console.log(this.state.personData)
    return (
      <React.Fragment>
        <Form
          handleFormUpdate={ this.handleFormUpdate }
        />
        {/* Conditional rendering */}
        { this.state.personData &&
          <div>
            <p>First name: {this.state.personData.firstName}</p>
            <p>Last name: {this.state.personData.lastName}</p>
            <p>Age: {this.state.personData.age}</p>
          </div>
        }
      </React.Fragment>
    )
  }
}
export default App
