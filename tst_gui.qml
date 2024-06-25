import QtQuick 2.0
import QtTest 1.0

TestCase {
    name: "GUITests"

    Item {
        id: testGame
        width: 300
        height: 300

        // Include the main QML file for the game
        // For example, if your main QML file is named Main.qml
        Loader {
            id: gameLoader
            source: "qrc:/Main.qml"
        }
    }

    function test_clickGrid() {
        // Simulate a click on the grid and check the resulting state
        var cell = testGame.children[0].findChild("gridCell_0_0")
        QTest.mouseClick(cell, Qt.LeftButton)
        compare(cell.text, "X", "Cell should be marked with X after click")
    }

    function test_login() {
        // Simulate a user login
        var usernameField = testGame.children[0].findChild("usernameField")
        var passwordField = testGame.children[0].findChild("passwordField")
        var loginButton = testGame.children[0].findChild("loginButton")

        usernameField.text = "testUser"
        passwordField.text = "testPassword"
        QTest.mouseClick(loginButton, Qt.LeftButton)

        var welcomeLabel = testGame.children[0].findChild("welcomeLabel")
        compare(welcomeLabel.text, "Welcome, testUser!", "User should be welcomed after login")
    }
}

