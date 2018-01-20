import QtQuick 2.6
import QtQuick.Controls 2.1
import QtGraphicalEffects 1.0

ProgressBar {
    id: control
    value: 0.5
    property color  fBorderColor: "#03A9F4"
    property color  ffirstBackGroundColor: "#2196F3"
    property color  fSecondBackGroundColor: "#fff"
    background: Rectangle {
        implicitWidth: 200
        implicitHeight: 15
        color: fSecondBackGroundColor
        radius: 3
        border.color: fBorderColor
        border.width: 1
        DropShadow {
            z: -1
            anchors.fill: parent
            horizontalOffset: 0
            verticalOffset: 0
            radius:  8.0
            samples: 17
            color: "#2196F3"
            source: parent
        }

    }

    contentItem: Item {
        implicitWidth: 200
        implicitHeight: control.height

        Rectangle {
            width: control.visualPosition * parent.width
            height: parent.height
            radius: 2
            color: ffirstBackGroundColor

//            DropShadow {
//                z: -1
//                anchors.fill: parent
//                horizontalOffset: 0
//                verticalOffset: 0
//                radius:  8.0
//                samples: 17
//                color: "#2196F3"
//                source: parent
//            }
        }
    }
}
