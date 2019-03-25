import QtQuick 2.12
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.5

ApplicationWindow {
    id: window
    visible: true
    width: 720
    height: 512


    menuBar: MenuBar {
    }

    header: ToolBar {
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
