import QtQuick 2.12
import QtQuick.Window 2.12
import QtQml.Models 2.1
import QtQuick.Controls 2.12
import "func.js" as Func

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    Repeater {
        model: itemModel
     }

    ObjectModel {
        id: itemModel
        Rectangle { y:0 ; height: 30; width: 80; color: "red" }
        Rectangle { y:50 ; height: 30; width: 80; color: "green" }
        Rectangle { y:100 ; height: 30; width: 80; color: "blue" }
        Button {x:200; y:0}
        ObjectA {x:250; y:100; onClicked:Func.funcB()}
    }


}
