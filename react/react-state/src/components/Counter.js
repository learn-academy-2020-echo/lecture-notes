import React, { Component } from 'react'

class Counter extends Component{
  constructor(props){
    super(props)
    this.state = {
      count: 0,
      banana: "banana"
    }
  }

  addOne = () => {
    // alert("Yo!")
    this.setState({ count: this.state.count + 1 })
  }

  removeOne = () => {
    if(this.state.count === 0){
      this.setState({ count: 0 })
    } else {
      this.setState({ count: this.state.count - 1 })
    }
  }

  render(){
    return(
      <React.Fragment>
        <p className="counter">Counter: { this.state.count }</p>
        <p>Banana: { this.state.banana }</p>
        <button onClick={ this.addOne }>Add One</button>
        <button
          onClick={ this.removeOne }
          style={ {backgroundColor: "orange"} }
        >
          Remove One
        </button>
      </React.Fragment>
    )
  }
}
export default Counter
