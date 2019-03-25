import QtQuick 2.10
import QtQuick.Controls 2.3
import QtQuick.Layouts 1.3

Rectangle {
    color: "#45777777"

    ColumnLayout {

        width: parent.width
        height: parent.height
        //spacing: 0


        // tabBar
        Rectangle {
            Layout.fillWidth: true
            //Layout.preferredHeight: 40
            Layout.minimumHeight: 40
            color: "green"
        }

        // the view
        Rectangle {
            Layout.fillWidth: true
            //Layout.preferredHeight: 200
            Layout.fillHeight: true
            color: "blue"
        }


        // the collapsible
        // ToDo: should be in the view's component
        // if neccessary
        Rectangle {
            Layout.fillWidth: true
            //Layout.preferredHeight: 200
            Layout.fillHeight: true
            color: "gold"
        }

        // the bottom tabBar
        Rectangle {
            Layout.fillWidth: true
            //Layout.preferredHeight: 40
            Layout.minimumHeight: 40
            color: "green"
        }


    }

}
