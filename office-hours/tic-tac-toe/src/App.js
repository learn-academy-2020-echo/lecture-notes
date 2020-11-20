// TIC TAC TOE

import React, { Component } from 'react'
import Square from './components/Square'
import './App.css'

class App extends Component {
  constructor(props){
    super(props)
    this.state = {
      // This is another way to create an array that has all the same values:
      // gameBoard: Array(9).fill(null),
      gameBoard: [null, null, null, null, null, null, null, null, null],
      currentPlayer: "🍣",
      winner: null,
    }
  }

  gamePlay = (currentSquare) => {
    // destructures the keys out of state
    let { gameBoard, currentPlayer } = this.state
    // if the index of the clicked square is null (meaning it hasn't been claimed by another player) then assign it
    if(gameBoard[currentSquare] === null){
      gameBoard[currentSquare] = currentPlayer
      this.setState({
        gameBoard: gameBoard,
        // ternary to toggle players
        currentPlayer: currentPlayer === "🍣" ? "🥑" : "🍣"
      })
    }
  }

  render() {
    return (
      <React.Fragment>
        <div id="gameboard">
          { this.state.gameBoard.map((value, index) => {
            return (
              <Square
                value={ value }
                index={ index }
                key={ index }
                gamePlay={ this.gamePlay }
              />
            )
          })}
        </div>
      </React.Fragment>
    )
  }
}
export default App
