import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.12
import QtQuick.Layouts 1.12

Popup {
    id: recordpopup
    anchors.centerIn: Overlay.overlay
    width: 400
    height: 200
    modal: true
    focus: true
    closePolicy: Popup.NoAutoClose
    padding: 0
    Rectangle{
        width: parent.width
        height: parent.height * 0.2
        anchors.top: parent.top
        color: "#01004e"
        Text {
            font.pointSize: 15
            text: "Error"
            font.bold: true
            color: "white"
            padding: 10
            anchors.verticalCenter: parent.verticalCenter
        }
    }
    Button{
        id: butt
        width: 80
        height: 48
        anchors.bottomMargin: 10
        anchors.bottom: parent.bottom
        anchors.horizontalCenter: parent.horizontalCenter
        text: "OK"
        contentItem: Text {
            text: butt.text
            color: "#01004e"
            font.pointSize: 15
            font.bold: true
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
        }
        background: Rectangle {
            color: "lightgrey"
                }
        onClicked: {
            recordpopup.close()
        }
    }

    contentItem: Rectangle{
        color: "white"
        Text {
            font.pointSize: 15
            text: "Recording wasn't started"
            font.bold: true
            color: "#01004e"
            anchors.centerIn: parent
        }
    }
}
