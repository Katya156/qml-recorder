import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.12
import QtQuick.Layouts 1.12

Rectangle {
    property MouseArea i2: stopClick
    id: stopRec
    width: grid.cellWidth; height: grid.cellHeight * 0.4
    radius: 5
    color: stopClick.containsPress ? "#01004e" : "lightgrey"
    anchors.right: parent.right
    anchors.bottom: parent.bottom
    anchors.margins: 10
    Image {
        id: img1
        anchors.centerIn: parent
        width: parent.height / 1.2
        height: parent.height / 1.2
        source: "./img/stop.png"
    }
//    Text {
//        id: choitext;
//        text: "exit";
//        anchors.centerIn: parent;
//        font.pointSize: grid.cellWidth / 15;
//        font.bold: true;
//        color: "white"
//    }
    MouseArea {
        id: stopClick
        anchors.fill: parent
        onClicked: {
            //appCore.recStop()
            //appCore.addSelect(model.rtsp)
            //appCore.buttonReact(model.rtsp, model.name)
            //appCore.recStart()
            startRec.color = "lightgrey"
        }
    }
}
