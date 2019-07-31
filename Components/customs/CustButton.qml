import QtQuick 2.12
import QtQuick.Controls 2.12

Button {
    id: ctrl

    background: Rectangle {
        implicitWidth: 36
        color: ctrl.pressed | ctrl.hovered ? "#ccc" : "transparent"
    }

    contentItem: Text {
        padding: ctrl.padding
        text: ctrl.text
        font.family: "Segoe MDL2 Assets"
    }

}
