import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.12
import QtQuick.Layouts 1.12

Component{
    id: listdelegate
    Rectangle
    {
        id: listcameras
        width: ListView.view.width / 45
        Text {
                id: textcameras
                text: model.name
                font.pointSize: parent.width
                font.bold: true
                color: "#01004e"
            }
    }

}
