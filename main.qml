import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Layouts 1.12
import "Components"
import "Components/customs"

ApplicationWindow {
    id: mainWindow
    visible: true
    width: 1024
    height: 512
    color: "#f1f1f1"
    flags: Qt.FramelessWindowHint | Qt.Window

    Component.onCompleted: mainWindow.showMaximized()


    menuBar: Rectangle {
        height: 36
        color: "transparent"

        property int prevX
        property int prevY

        // To GO
        /*MouseArea {
            anchors.fill: parent

            onPressed: {
                parent.prevX = mouseX
                parent.prevY = mouseY
            }

            onMouseXChanged: {
                var change = mouseX - parent.prevX
                mainWindow.setX(mainWindow.x + change)

            }

            onMouseYChanged: {
                var change = mouseY - parent.prevY
                mainWindow.setY(mainWindow.y + change)

            }
        }*/

        RowLayout {
            anchors.fill: parent

            MenuBar {
                Menu {
                    title: qsTr("File")
                    Action { text: qsTr("File") }
                }
                Menu {
                    title: qsTr("Edit")
                    Action { text: qsTr("Edit") }
                }
                Menu {
                    title: qsTr("Project")
                    Action { text: qsTr("Project") }
                }
                Menu {
                    title: qsTr("Build")
                    Action { text: qsTr("Build") }
                }

                background: Rectangle {
                    color: "transparent"
                }

            }

            Row {
                //Layout.preferredWidth: 144
                Layout.alignment: Qt.AlignRight
                CustButton {
                    text: "\uE921"
                    onClicked: mainWindow.showMinimized()
                }
                CustButton {
                    text: "\uE922"
                    onClicked: mainWindow.showMaximized()

                }
                CustButton {
                    text: "\uE8BB"
                    onClicked: mainWindow.close()
                }
            }

        }

    }

    header: Rectangle {
        width: parent.width
        height: 36
        color: "transparent"

        ToolBar {
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.leftMargin: 8
            anchors.rightMargin: 12
            //width: parent.width
            height: 36

            background: Rectangle {
                color: 'transparent'
            }

            RowLayout {
                height: parent.height

                CustToolButton {
                    Layout.preferredHeight: 24
                    //font.family: "Material Design Icons"
                    text: "\uf8cb"
                }

                CustToolButton {
                    Layout.preferredHeight: 24
                    //font.family: "Material Design Icons"
                    text: "\uf8cb"
                }

                CustToolButton {
                    Layout.preferredHeight: 24
                    //font.family: "Material Design Icons"
                    text: "\uf8cb"
                }

                CustToolButton {
                    Layout.preferredHeight: 24
                    //font.family: "Material Design Icons"
                    text: "\uf8cb"
                }

            }
        }

    }

    Rectangle {
        width: parent.width
        height: parent.height
        color: "transparent"

        // the rectangle beneath
        Rectangle {
            id: main_content_rect
            anchors.fill: parent
            anchors.leftMargin: 12
            anchors.rightMargin: 12
            color: "transparent"

            // the main layout
            RowLayout {
                width: parent.width
                height: parent.height

                CenterBlock {
                    Layout.fillWidth: true
                    Layout.fillHeight: true
                }


                PropertiesBlock {
                    Layout.preferredWidth: main_content_rect.width / 4
                    Layout.fillHeight: true
                }


            }

        }

        // the rectangle onTop
        Rectangle {
            width: parent.width
            height: parent.height
            color: "transparent"
        }

    }

    footer: Rectangle {
        width: parent.width
        height: 24
        color: "indigo"
    }
}
