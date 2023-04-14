import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.12
import QtQuick.Layouts 1.12

Popup{
    id: recordpopup
    anchors.centerIn: Overlay.overlay
    width: 400
    height: 200
    modal: true
    focus: true
    closePolicy: Popup.NoAutoClose
    padding: 0
    Overlay.modal: Rectangle {
            color: "#ABABAB"
        }
    background: Rectangle{
        id: first
        color: "white"
        radius: 8
        Text {
            id: text1
            font.pointSize: 15
            text: "Error"
            font.bold: true
            color: "black"
            anchors.top: parent.top
            topPadding: 20
            leftPadding: 20
        }
        Text {
            font.pointSize: 12
            text: "The recording wasn't started"
            color: "black"
            anchors.top: text1.bottom
            padding: 20
        }
    }
    Rectangle{
        width: parent.width
        height: parent.height * 0.4
        anchors.bottom: parent.bottom
        color: "lightgrey"
        Button{
            id: butt1
            width: 150
            height: 40
            anchors.bottomMargin: 10
            anchors.bottom: parent.bottom
            anchors.centerIn: parent
            hoverEnabled: false
            text: "OK"
            contentItem: Text {
                text: butt1.text
                color: "white"
                font.pointSize: 15
                font.bold: true
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
            }
            background: Rectangle {
                color: "#01004e"
                radius: 4
            }
            onClicked: {
               recordpopup.close()
            }
        }
    }
}
