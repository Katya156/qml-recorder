import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.12
import QtQuick.Layouts 1.12

Button {
    id: clearChoi
    anchors.right: startRec.left
    anchors.bottom: parent.bottom
    anchors.left: parent.left
    anchors.margins: 10
    ToolTip {
        id: control
        text: qsTr("Очистка выбора")
        visible: hovered
        contentItem: Text {
            text: control.text
            color: "black"
        }

        background: Rectangle {
            color: "white"
            border.color: "lightgrey"
            radius: 4
        }
    }
    Image {
        id: img3
        anchors.centerIn: parent
        width: parent.height / 1.2
        height: parent.height / 1.2
        source: "./img/del.png"
    }
    background: Rectangle{
        id: recbutt1
        radius: 4
        implicitWidth: grid.cellWidth;
        implicitHeight: grid.cellHeight * 0.4
        color: clearChoi.pressed ? "#01004e" : "lightgrey"
    }

    onClicked: {
//            appCore.clearSelected()
        }
}
