import QtQuick 2.12
import QtQuick.Controls 2.12

Component {
    Rectangle{
        width: parent.width
        height: parent.height
        border.color: "#45777777"

        ScrollView {
            anchors.fill: parent

            TextArea {
                placeholderText: "Rectangle {}"
            }

        }

    }
}
