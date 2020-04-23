import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Layouts 1.12

Page {
    width: 600
    height: 400

    title: qsTr("Local Compare")

    GridLayout {
        anchors.top: parent.top
        anchors.topMargin: 4
        anchors.left: parent.left
        anchors.leftMargin: 4
        rows: 4
        columns: 2
        rowSpacing: 4
        columnSpacing: 4
        flow: GridLayout.LeftToRight

        Rectangle {
            width: 300
            height: 200
            border.width: 2
            border.color: "green"
            Image {
                id: img_source
            }
        }
        Rectangle {
            width: 300
            height: 200
            border.width: 2
            border.color: "red"
            Image {
                id: img_target
            }
        }
        Button {
            id: btn_source
            text: qsTr("Choose your Photo")
            Layout.columnSpan: 1
            Layout.fillWidth: true
        }
        Button {
            id: btn_target
            text: qsTr("Choose her Photo")
            Layout.columnSpan: 1
            Layout.fillWidth: true
        }
        Button {
            id: btn_compare
            text: qsTr("Begin Compare")
            Layout.columnSpan: 2
            Layout.fillWidth: true
            onClicked: {
                console.log("Begin compare ...")
            }
        }
        Rectangle {
            Layout.columnSpan: 2
            Layout.fillWidth: true
            height: 20
            border.width: 2
            border.color: "black"
            TextEdit {
                id: resultView
                wrapMode: TextEdit.WordWrap
                text: "Face similarity : ..."
            }
        }
    }
}
