import QtQuick 2.15
import QtTest 1.0

TestCase {
    name: "GameLogicTests"

    function test_initialState() {
        // Verify the initial state of the game board is empty
        for (var row = 0; row < 3; row++) {
            for (var col = 0; col < 3; col++) {
                compare(game.board[row][col], "", "Initial board should be empty")
            }
        }
    }

    function test_playerMove() {
        // Simulate a player move and check the board state
        game.makeMove(0, 0, "X")
        compare(game.board[0][0], "X", "Board should be updated with player's move")
    }

    function test_winCondition() {
        // Simulate a winning condition
        game.makeMove(0, 0, "X")
        game.makeMove(0, 1, "X")
        game.makeMove(0, 2, "X")
        compare(game.checkWin(), true, "Player should win with three in a row")
    }

    function test_tieCondition() {
        // Simulate a tie condition
        game.makeMove(0, 0, "X")
        game.makeMove(0, 1, "O")
        game.makeMove(0, 2, "X")
        game.makeMove(1, 0, "O")
        game.makeMove(1, 1, "X")
        game.makeMove(1, 2, "O")
        game.makeMove(2, 0, "O")
        game.makeMove(2, 1, "X")
        game.makeMove(2, 2, "O")
        compare(game.checkTie(), true, "Game should be a tie with no empty spaces")
    }
}

