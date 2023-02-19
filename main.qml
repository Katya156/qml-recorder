import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.12
import QtQuick.Layouts 1.12

Window {
    id: win
    width: 800
    height: 600
    visible: true
    title: qsTr("REcorderGUI1.0")
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

        Rectangle {
            id: scrol
            width: parent.width * 0.2
            height: parent.height
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
            width: parent.width - scrol.width
            anchors.left: scrol.right
            anchors.top: parent.top
            color: "white"
            GridView {
                id: grid
                cellWidth: parent.width / 3 - 12
                cellHeight: parent.height / 2 - 12
                anchors.fill: parent
                anchors.margins: 15
                model: ScreenModel {}
                delegate: ScreenDelegate {}
            }
        }
//        Rectangle{
//            id: settings
//            width: parent.width * 0.05
//            height: parent.height * 0.6
//            anchors.right: parent.right
//            anchors.top: parent.top
//            color: "white"
//            Rectangle{
//                id: tools
//                width: parent.width
//                height: parent.height * 0.1
//                color: "red"
//            }
//        }

//        СПИСОК КАМЕР БЕЗ БЭКА
//        ЕСЛИ РАСКОММЕНТИРОВАТЬ, ТО НУЖНО ПОМЕНЯТЬ У НИЖНЕГО RECTANGLE ВЫСОТУ НА (*0.15)

//        Rectangle
//        {
//            id: list
//            height: parent.height - buttons.height - screen.height
//            width: parent.width - scrol.width
//            color: "#ffecde"
//            anchors.top: screen.bottom
//            anchors.bottom: buttons.top
//            anchors.right: parent.right
//            border.color: "#01004e"
//            border.width: 3
//            radius: 10
//            Text
//            {
//                id: chosencameras
//                text: "Chosen cameras"
//                color: "#01004e"
//                anchors.horizontalCenter: parent.horizontalCenter
//                font.bold: true
//                font.pointSize: parent.width / 50
//            }
//            ListView
//            {
//                id: listview1
//                anchors.fill: parent
//                anchors.margins: 25
//                spacing: 30
//                model: ScreenModel{}
//                delegate: ListDelegate{}
//            }
//        }

        Rectangle{
            id: buttons
            height: parent.height * 0.4
            width: parent.width - scrol.width
            anchors.right: parent.right
            anchors.bottom: parent.bottom
            color: "white"
            StopRecordingButton {id: stopRec}
            StartRecordingButton {id: startRec}
            ClearChoiceButton {id: clearChoi}
//            SelectCamerasButton {id: select}
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
