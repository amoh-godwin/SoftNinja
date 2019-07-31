import QtQuick 2.12
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.5
import "customs"

Rectangle {
    color: "transparent"

    ColumnLayout {

        width: parent.width
        height: parent.height
        //spacing: 0

        ColumnLayout {
            Layout.fillWidth: true
            Layout.fillHeight: true
            spacing: 0

            // tabBar
            Rectangle {
                Layout.fillWidth: true
                //Layout.preferredHeight: 40
                Layout.preferredHeight: 24
                color: "#f1f1f1"

                TabBar {
                    width: parent.width
                    height: parent.height

                    background: Rectangle {
                        implicitHeight: 24
                        color: "transparent"

                        Rectangle {
                            anchors.bottom: parent.bottom
                            width: parent.width
                            height: 2
                            color: "dodgerblue"
                        }

                    }

                    CustTabButton {
                        text: qsTr("First layout")
                    }

                    CustTabButton {
                        text: qsTr("Second layout")
                    }

                }

            }

            // the view
            StackView {
                Layout.fillWidth: true
                Layout.fillHeight: true
                initialItem: textComponent
           }

           // Components
           BlankComponent { id: blankComponent }
           TextComponent { id: textComponent }

        }

       Console {
       }


    }

}
