import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.12
import QtQuick.Layouts 1.12

Button {
    id: stopRec
    anchors.right: parent.right
//    hoverEnabled: false
    anchors.bottom: parent.bottom
    anchors.margins: 10
    ToolTip {
        id: control3
        text: qsTr("Остановка записи")
        visible: hovered
        contentItem: Text {
            text: control3.text
            color: "black"
        }

        background: Rectangle {
            color: "white"
            border.color: "lightgrey"
            radius: 4
        }
    }
    Image {
        id: img1
        anchors.centerIn: parent
        width: parent.height / 1.2
        height: parent.height / 1.2
        source: "./img/stop.png"
    }
    background: Rectangle{
        id: recbutt3
        color: stopRec.pressed ? "#01004e" : "lightgrey"
        implicitHeight: grid.cellHeight * 0.4
        implicitWidth: grid.cellWidth
        radius: 4
    }

    onClicked: {
            //appCore.recStop()
            //appCore.addSelect(model.rtsp)
            //appCore.buttonReact(model.rtsp, model.name)
            //appCore.recStart()
            startRec.background.color = "lightgrey"
//            recordpopup.open()
        }
}
