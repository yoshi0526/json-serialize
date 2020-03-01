import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

//    ObjectA {
//        id:objecA1
//        x:20
//        y:20
//        onClicked: funcA()
//    }

//    ObjectB {
//        id:objectB1
//        x:100
//        y:100
//    }

    Repeater {
        model: 2
        Item {
            ObjectA{
                y:index*20
                x:index*20
                onClicked: funcA(index)
            }
            ObjectB{
                x:index*20 + 100
                y:index*20 + 100
            }
        }

     }

    function funcA(n){
        console.log("funcA:"+n)
    }
    function funcB(){
        console.log("funcB")
    }
}
