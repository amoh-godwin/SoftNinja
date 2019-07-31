import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Layouts 1.12

Rectangle {
    width: parent.width
    height: parent.height

    ToolBar {
        width: parent.width
        height: parent.height

        ColumnLayout {
            width: parent.width
            height: parent.height

            ToolButton {
                text: qsTr("Document Outline")

                background: Rectangle {
                    implicitHeight: 120

                    Rectangle {
                        width: 4
                        height: parent.height
                        color: "dodgerblue"
                    }

                }


                contentItem: Text {
                    padding: parent.padding
                    text: parent.text
                }

            }

        }

    }

}
