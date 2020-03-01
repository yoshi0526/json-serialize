import QtQuick 2.0

Item {
    id:root
    signal clicked()

    Rectangle {
        width: 100
        height: 100
        color: "blue"
        MouseArea {
            id:mousArea
            anchors.fill: parent
            onClicked: {
                root.clicked();
                console.log("push A")
            }
        }
    }
}
