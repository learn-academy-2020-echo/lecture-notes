import React, { Component } from 'react'

class Form extends Component {
  constructor(props){
    super(props)
    this.state = {
      form: {
        firstName: "",
        lastName: "",
        age: ""
      }
    }
  }

  handleChange = (e) => {
    let { form } = this.state
    form[e.target.name] = e.target.value
    this.setState({ form: form })
  }

  handleSubmit = (e) => {
    e.preventDefault()
    this.props.handleFormUpdate(this.state.form)
  }


  render() {
    return (
      <React.Fragment>
        <form>

          <label>Enter your first name:</label>
          <input
            type="text"
            value={ this.state.form.firstName }
            name="firstName"
            onChange={ this.handleChange }
          />
          <br />

          <label>Enter your last name:</label>
          <input
            type="text"
            value={ this.state.form.lastName }
            name="lastName"
            onChange={ this.handleChange }
          />
          <br />

          <label>Enter your age:</label>
          <input
            type="text"
            value={ this.state.form.age }
            name="age"
            onChange={ this.handleChange }
          />
          <br />

          <input
            type="submit"
            onClick={ this.handleSubmit }
          />

        </form>
      </React.Fragment>
    )
  }
}
export default Form
