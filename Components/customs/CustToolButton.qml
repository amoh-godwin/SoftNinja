import QtQuick 2.12
import QtQuick.Controls 2.12

ToolButton {
    id: ctrl
    font.family: "Material Design Icons"

    background: Rectangle {
        color: ctrl.pressed ? "#45777777" : "transparent"
    }

}
