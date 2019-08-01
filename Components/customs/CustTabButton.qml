import QtQuick 2.12
import QtQuick.Controls 2.12

TabButton {
    width: 124

    background: Rectangle {
        color: parent.checked ?"dodgerblue" : parent.pressed ? "dodgerblue" : "transparent"
    }

    contentItem: Text {
        width: 124
        text: parent.text
    }

}
