import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.12
import QtQuick.Layouts 1.12

Rectangle {
    id: startRec
    width: grid.cellWidth; height: grid.cellHeight * 0.4
    radius: 5
    color: "lightgrey"
    anchors.right: stopRec.left
    anchors.bottom: parent.bottom
    anchors.margins: 10
    Image{
        id: img2
        //anchors.fill: parent
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
////          из функции StartRecording надо вернуть 2 аргумента: кол-во памяти, занимаемой записями,
////          и флаг начатия записи
//            res = appCore.StartRecording()
//            if (res[0] > максимальный объем доступной памяти)
//                memorypopup.open()
//            else
////          тут вместо 0 вставить то, что возвращается при неуспешном начатии записи
//                if(res[1] === 0)
//                    popup.open()
            parent.color = "#01004e"
        }
    }
}
