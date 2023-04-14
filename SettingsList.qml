import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.12
import QtQuick.Layouts 1.12

Rectangle{
    id: settings
    width: parent.width * 0.05
    height: parent.height * 0.6
    anchors.right: parent.right
    anchors.top: parent.top
    color: "white"
    ComboBox {
        id: cb
        currentIndex: 0
        width: parent.width
        height: parent.height * 0.1
        model:
            ListModel {
            id: model
            ListElement { text: "⚙" }
            ListElement { text: "Setting 1" }
            ListElement { text: "Setting 2" }
            ListElement { text: "Setting 3" }
        }
    }
}
