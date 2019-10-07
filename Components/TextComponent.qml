import QtQuick 2.10
import QtQuick.Controls 2.3
import QtQuick.Layouts 1.3

Component {
    Rectangle {
        id: tSpaceCont
        width: parent.width
        height: parent.height
        border.color: "#45777777"

        signal closeWord()
        signal finWord()
        signal insSpace()

        onCloseWord: {
            var curr_ind = tSpace.cursorPosition - 1
            var last_char = tSpace.getText(curr_ind, curr_ind + 1)

            var stat = "</div><br>";
            tSpace.insert(tSpace.cursorPosition, stat)

            if (last_char == "{") {
                tSpace.curr_tabs += 1;
            } else {
                // do nothing
            }
            var spaces_no = tSpace.curr_tabs * 4
            var spaces = "a"
            for (var i=1; i<=spaces_no; i++) {
                insSpace()
            }

            tSpace.insert(tSpace.cursorPosition, "<span>")
        }

        onInsSpace: {
            tSpace.insert(tSpace.cursorPosition, ".")
        }

        onFinWord: {
            tSpace.insert(tSpace.cursorPosition, "</span> <span>")
        }

        ScrollView {
            width: parent.width - 2
            height: parent.height - 2
            anchors.centerIn: parent

            TextArea {
                id: tSpace
                //Layout.fillHeight: true
                width: 1024
                focus: true
                placeholderText: "Rectangle {}"
                font.pixelSize: 14
                font.family: "Segoe UI Semilight"
                leftPadding: 48
                selectByMouse: true
                selectedTextColor: "white"
                selectionColor: "indigo"
                textFormat: TextEdit.RichText
                tabStopDistance: 4
                text: "<div>"

                property string raw_text
                property int curr_tabs: 0

                //Component.onCompleted: tSpace.insert(tSpace.cursorPosition, "<span class='love'>Dance</span>");

                background: Rectangle {
                    //color: "dodgerblue"

                    Row {
                        //anchors.fill: parent
                        Rectangle {
                            width: 16//Layout.preferredWidth: 16
                            height: tSpaceCont.height - 2//Layout.preferredHeight: tSpaceCont.height - 2
                            color: "#f1f1f1"
                        }

                        Rectangle {
                            width: 24//Layout.preferredWidth: 24
                            height:tSpaceCont.height - 2//Layout.fillHeight: true
                            color: "transparent"
                        }

                        Rectangle {
                            width: 8//Layout.preferredWidth: 8
                            height: tSpaceCont.height - 2//Layout.fillHeight: true
                        }
                    }

                }


                Keys.onReturnPressed: {
                    // close the span and open a new one for a new word
                    enterPressed(tSpace.text, tSpace.lineCount, tSpace.cursorPosition)
                }

                Keys.onEnterPressed: {
                    enterPressed(tSpace.text, tSpace.lineCount, tSpace.cursorPosition)
                }

                Keys.onPressed: {
                    if(event.key === Qt.Key_Space) {
                        spacePressed(tSpace.text, tSpace.lineCount, tSpace.cursorPosition)
                        return
                    }

                    charPressed(tSpace.text, tSpace.lineCount, tSpace.cursorPosition)
                }

            }
        }

    }
}
