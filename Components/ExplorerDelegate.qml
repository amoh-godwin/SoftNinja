import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Layouts 1.12

Component {

    Rectangle {
        anchors.left: parent.left
        anchors.leftMargin: 4
        width: parent.width - 4
        height: 24
        color: "transparent"

        Settings {id: settings}

        RowLayout {
            height: parent.height

            Text {
                id: arrow
                font: settings.mat_icon
                text: settings.arrow_icon
                visible: folder
            }

            Rectangle {
                Layout.preferredWidth: folder ? 0 : 21
                Layout.fillHeight: true
                color: "transparent"
            }

            Text {
                id: fold_icon
                font: settings.mat_icon
                text: folder ? settings.fold_o : settings.doc_icon
            }

            Text {
                text: title
            }


        }
    }
}
