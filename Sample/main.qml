// main.qml
import QtQuick 2.15
import QtQuick.Controls 2.15

ApplicationWindow {
    visible: true
    width: 640
    height: 480
    
    title: "Qt Quick Sample"

    Button {
        text: "Click Me!"
        anchors.centerIn: parent

        onClicked: {
            console.log("Button CLicked!")
        }
    }
}

