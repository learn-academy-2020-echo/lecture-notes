# React State

### App Setup

$ yarn create react-app react-state

### Vocabulary

Components - reusable pieces of code, must be called

Render - method in a React class component, stores JSX

JSX - hybrid between JS and HTML, which is what is viewed by the user in the browser

Life-cycle methods - set of methods that help mount and unmount components, makes them visible to the user, or removes them from view, render is one of them

### Information

Two basic types of information:  
1) static data  
2) behavior - functions/methods

### React State
State can help us pass information around inside of a single component

State is an object

Objects - have key:value pairs, can hold static info and behavior


### Class Components

One way to write a class component:
```javascript
import React, { Component } from 'react'

class App extends Component{
  render(){
    return(
      <React.Fragment>
        Yo!
      </React.Fragment>
    )
  }
}
export default App
```

Another way to write a class component:
```javascript
import React from 'react'

export default class App extends React.Component{
  render(){
    return(
      <>
        Yo!
      </>
    )
  }
}
```

Both do the same thing

### Adding State
Constructor - method that runs when a new object is created and passes information to the object, in React it is a life cycle method

Super - allows data/behavior to be passed from parent to child


### Button
- Added a JSX tag `button`
- Added `onClick` triggers a behavior (method call)
- Defined the method called `onClick`

### Updating State
- NEVER update state directly
- ALWAYS use `setState`
- `setState` acts as a return



### Original Code
```
import React, { Component } from 'react'


class App extends Component{

  constructor(props){
    super(props)
    this.state = {
      count: 0,
    }
  }

  addOne = () => {
    this.setState({ count: this.state.count + 1 })
  }

  render(){
    return(
      <>
        <p>Counter: { this.state.count }</p>
        <button onClick={ this.addOne }>Add One</button>
      </>
    )
  }
}

export default App
```


### Breaking out the Counter
- Folder in the same level as `src` called components
- File in components called Counter.js
- Moved the code over to Counter component
- Called Counter in App.js `<Counter />`
- `import Counter from './components/Counter'`
- Can call Counter as many times as we want
- All counters are unique instances of the Counter Class (have independent behavior)


### Styles
- id or className="counter" to tag in JSX
- style in App.css
- `import './App.css'` in App.js
- inline styling `style={ {backgroundColor: "orange"} }`
