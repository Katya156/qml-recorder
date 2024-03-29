import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.12
import QtQuick.Layouts 1.12

Window {
    id: win
    width: 800
    height: 600
    visible: true
    title: qsTr("RecorderGUI1.0")
//    Component.onCompleted: {
//        var component = Qt.createComponent("stream.qml")
//        var window    = component.createObject(win)
//        window.show()
//    }
    //flags: Qt.Window | Qt.FramelessWindowHint //Включить в финале
    //visibility: Window.FullScreen  // НЕ ЗАБЫТЬ ВКЛЮЧИТЬ ПОТОМ!!!!!


    Page {
        id: page
        anchors.fill: parent
        footer: Rectangle {
            id: footer
            width: win.width
            height: win.height * 0.05
            color: "#01004e"
            border.color: "#01004e"
            border.width: 2
            Text {
                anchors.centerIn: parent
                text: "some information"
                color: "white"
                font.bold: true
            }
        }
        background: Rectangle{color: "white"}

        Rectangle {
            id: scrol
            width: parent.width * 0.2
            height: parent.height
            radius: 8
            border.color: "lightgrey"
            color: "white"
            ListView {
                id: listview
                anchors.fill: parent
                anchors.margins: 15
                spacing: 25
                model: ButtonModel{}
                delegate: ButtonDelegate{}

            }
        }

        Rectangle {
            id: screen
            height: parent.height * 0.6
            width: parent.width - scrol.width - settings.width
            radius: 8
            border.color: "lightgrey"
            anchors.left: scrol.right
            anchors.top: parent.top
            color: "white"
            GridView {
                id: grid
                clip: true
                cellWidth: parent.width / 3 - 12
                cellHeight: parent.height / 2 - 12
                anchors.fill: parent
                anchors.margins: 15
                model: ScreenModel {}
                delegate: ScreenDelegate {}
            }
        }
        SettingsList {
            id: settings
        }

        Rectangle{
            id: buttons
            radius: 8
            border.color: "lightgrey"
            height: parent.height * 0.15
            width: parent.width - scrol.width
            anchors.right: parent.right
            anchors.bottom: parent.bottom
            color: "white"
            StopRecordingButton {id: stopRec}
            StartRecordingButton {id: startRec}
            ClearChoiceButton {id: clearChoi}
        }
        NotRecordPopup {
            id: recordpopup
        }
        AFewMemoryPopup {
            id: memorypopup
        }
        BreakCoderPopup {
            id: breakcoderpopup
        }
        BreakCamsPopup {
            id: breakcamspopup
        }
    }
}
