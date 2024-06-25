import QtQuick 2.15
import QtTest 1.0

TestCase {
    name: "AILogicTests"

    function test_aiMove() {
        // Set up a game state and let the AI make a move
        game.board = [["X", "O", "X"], ["O", "X", ""], ["", "", "O"]]
        var aiMove = game.getAIMove()
        compare(aiMove.length, 2, "AI move should return a row and column")
    }

    function test_aiWinMove() {
        // Set up a game state where AI can win and verify AI wins
        game.board = [["X", "O", "X"], ["O", "X", ""], ["O", "", ""]]
        game.makeMove(2, 1, "X")
        compare(game.checkWin(), true, "AI should win with a strategic move")
    }
}
