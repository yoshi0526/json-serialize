import QtQuick 2.0

Item {
    id:root

    Rectangle {
        width: 50
        height: 100
        color: "red"
        MouseArea {
            anchors.fill: parent
            onClicked: console.log("push B")
        }
    }
}
