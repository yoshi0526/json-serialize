import QtQuick 2.12
import QtQuick.Window 2.12
import "func.js" as Func

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    Repeater {
        model: 2
        Item {
            ObjectA{
                y:index*20
                x:index*20
                onClicked: Func.funcA(index)
            }
            ObjectB{
                x:index*20 + 100
                y:index*20 + 100
            }
        }
     }
}
