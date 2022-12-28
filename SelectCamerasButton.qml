import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.12
import QtQuick.Layouts 1.12

Rectangle {
    property int i: 0
    id: select
    width: grid.cellWidth; height: grid.cellHeight * 0.4
    radius: 5
    color: i % 2 == 0 ? "#01004e": "#bea18d"
    border.width: 2
    border.color: "#01004e"
    anchors.right: clearChoi.left
    anchors.bottom: parent.bottom
    anchors.left: parent.left
    anchors.margins: 10
    Image{
        id: img
        anchors.centerIn: parent
        width: parent.height / 1.2
        height: parent.height / 1.2
        source: "./img/addnew.png"
    }
//    Text {
//        id: selecttext;
//        text: "camera selection";
//        anchors.centerIn: parent;
//        font.pointSize: grid.cellWidth / 15;
//        font.bold: true;
//        color: "white"
//    }
    MouseArea {
        id: selectClick
        anchors.fill: parent
        onClicked: {
            //appCore.setRecord()
            i += 1
        }
    }
}
