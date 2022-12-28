import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.12
import QtQuick.Layouts 1.12

Rectangle {
    id: startRec
    width: grid.cellWidth; height: grid.cellHeight * 0.4
    radius: 5
    color: "#01004e"
    border.width: 2
    border.color: "#01004e"
    anchors.right: choi.left
    anchors.bottom: parent.bottom
    anchors.margins: 10
    Image{
        id: img2
        anchors.centerIn: parent
        width: parent.height / 1.2
        height: parent.height / 1.2
        source: "./img/record.png"
    }
//    Text {
//        id: startRectext;
//        text: "start recording";
//        anchors.centerIn: parent;
//        font.pointSize: grid.cellWidth / 15;
//        font.bold: true;
//        color: "white"
//    }
    MouseArea {
        id: startRecClick
        anchors.fill: parent
        onClicked: {
            //appCore.StartRecording()
            //appCore.addSelect(model.rtsp)
            //appCore.buttonReact(model.rtsp, model.name)
            //appCore.recStart()
            parent.color = "#bea18d"
        }
    }
}
