import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Layouts 1.12

Page {
    width: 600
    height: 400

    title: qsTr("Network Search")

    RowLayout {
        anchors.top: parent.top
        anchors.topMargin: 4
        anchors.left: parent.left
        anchors.leftMargin: 4
        GridLayout {
            anchors.top: parent.top
            anchors.topMargin: 4
            anchors.left: parent.left
            anchors.leftMargin: 4
            rows: 5
            columns: 1
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
            Button {
                id: btn_source
                text: qsTr("Choose your Photo")
                Layout.columnSpan: 1
                Layout.fillWidth: true
            }
            Rectangle {
                Layout.columnSpan: 1
                Layout.fillWidth: true
                height: 20
                border.width: 2
                border.color: "black"
                TextEdit {
                    id: txt_keyword
                    wrapMode: TextEdit.WordWrap
                    text: qsTr("input keyword ...")
                }
            }
            Button {
                id: btn_compare
                text: qsTr("Begin Search")
                Layout.columnSpan: 1
                Layout.fillWidth: true
            }
            Rectangle {
                Layout.columnSpan: 1
                Layout.fillWidth: true
                height: 20
                border.width: 2
                border.color: "black"
                TextEdit {
                    id: resultView
                    wrapMode: TextEdit.WordWrap
                    text: qsTr("Search Result : ...")
                }
            }
        }
        Rectangle {
            width: 300
            height: 400
            border.width: 2
            border.color: "red"
        }
    }
}
