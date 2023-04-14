import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.12
import QtQuick.Layouts 1.12

Button {
    id: startRec
    anchors.right: stopRec.left
    anchors.bottom: parent.bottom
    anchors.margins: 10
    ToolTip {
        id: control2
        text: qsTr("Начало записи")
        visible: hovered
        contentItem: Text {
            text: control2.text
            color: "black"
        }
        background: Rectangle {
            color: "white"
            border.color: "lightgrey"
            radius: 4
        }
    }
    Image{
        id: img2
        //anchors.fill: parent
        anchors.centerIn: parent
        width: parent.height / 1.2
        height: parent.height / 1.2
        source: "./img/record.png"
    }
    background: Rectangle{
        id: recbutt2
        radius: 4
        implicitHeight: grid.cellHeight * 0.4
        implicitWidth: grid.cellWidth;
        color: "lightgrey"
    }
    onClicked: {
////          из функции StartRecording надо вернуть 2 аргумента: кол-во памяти, занимаемой записями,
////          и флаг начатия записи
//            if (page.isRecording == 0) {
//                res = appCore.StartRecording();
//            }
//            page.isRecording = 1;
            recbutt2.color = "#01004e"
        }
}
