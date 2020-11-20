// SILLY EXAMPLE

// Code from App.js
import React, { Component } from 'react'
import Counter from './components/Counter'


class App extends Component {
  constructor(props){
    super(props)
    this.state = {
      counter: 0,
      banana: "banana",
      numbers: [2, 3, 4, 5, 6, 7]
    }
  }

  handleMessage = (iAmHere) => {
    alert(iAmHere)
  }

  render() {
    return (
      <React.Fragment>
      { this.state.numbers.map((banana, index) => {
        return (
          <Counter
            iAmValue={ banana }
            iAmIndex= { index }
            key={ index }
            iAmHandleMessage={ this.handleMessage }
          />
        )
      }) }

      </React.Fragment>
    )
  }
}

export default App


// Code from Counter.js
import React, { Component } from 'react'

class Counter extends Component {
  render() {
    const { iAmValue } = this.props
    return (
      <React.Fragment>
        This is the Counter component:
        Value: { iAmValue }
        Index: { this.props.iAmIndex }
        <br />

        <button onClick={ () => this.props.iAmHandleMessage(iAmValue) }>
          Super cool message
        </button>



      </React.Fragment>
    )
  }
}
export default Counter
