import QtQuick 2.15
import QtQuick.Controls 2.15

Window {
    id: window
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Button {
        text: "Click Me!"
        anchors.centerIn: parent

        onClicked: {
            console.log("Button clickes!")
        }
    }

}
