import QtQuick 2.12
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.5

ApplicationWindow {
    id: mainWindow
    visible: true
    width: 720
    height: 512
    flags: Qt.FramelessWindowHint | Qt.Window


    menuBar: Rectangle {
        height: 48
        color: "darkgrey"

        property int prevX
        property int prevY

        MouseArea {
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
        }

        RowLayout {
            anchors.fill: parent

            Row {
                Layout.preferredWidth: 144
                Layout.alignment: Qt.AlignRight
                Button {
                    width: 48
                    font.family: "Segoe MDL2 Assets"
                    text: "\uE921"
                    onClicked: mainWindow.showMinimized()
                }
                Button {
                    width: 48
                    font.family: "Segoe MDL2 Assets"
                    text: "\uE922"
                    onClicked: mainWindow.showMaximized()

                }
                Button {
                    width: 48
                    font.family: "Segoe MDL2 Assets"
                    text: "\uE8BB"
                    onClicked: mainWindow.close()
                }
            }

        }

    }

    header: Rectangle {
        width: parent.width
        height: 48
        color: "dodgerblue"

        MenuBar {}
        ToolBar {}

    }

    Rectangle {
        width: parent.width
        // The height should be the full height minus the others
        height: parent.width - (header.height + menuBar.height + footer.height)
        color: "black"

        // the rectangle beneath
        Rectangle {
            width: parent.width
            height: parent.height
            color: "transparent"

            // the main layout
            RowLayout {
                width: parent.width
                height: parent.height


                SideBar {
                    Layout.preferredWidth: 48
                    Layout.fillHeight: true
                }


                CenterBlock {
                    Layout.fillWidth: true
                    Layout.fillHeight: true
                }


                PropertiesBlock {
                    Layout.preferredWidth: 200
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
