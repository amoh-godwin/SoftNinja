import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Layouts 1.12

Rectangle {
    Layout.bottomMargin: 5
    Layout.fillWidth: true
    Layout.preferredHeight: 152
    border.color: "#45777777"

    ColumnLayout {
        anchors.centerIn: parent
        width: parent.width - 2
        height: parent.height - 2

        Rectangle {
            Layout.fillWidth: true
            Layout.preferredHeight: 24
            color: "#0082E8"
        }

        Rectangle {
            Layout.fillWidth: true
            Layout.fillHeight: true
        }

    }

}
