import QtQuick 2.9
import QtQuick.Controls 2.2
import QtGraphicalEffects 1.0
TextField{
    property color  fBorderColor: "#03A9F4"
    property color  fBackGroundColor: "#fff"
    property color  fTextColor: "#03A9F4"
    property string fText: ""
    background: Rectangle{
        id:root
        color: fBackGroundColor
        radius: 5

        border{
            color: fBorderColor
            width: 1
        }

    }
    DropShadow {
        z: -1
        anchors.fill: root
        horizontalOffset: 0
        verticalOffset: 0
        radius: 8.0
        samples: 17
        color: "#2196F3"
        source: root
    }

    text:fText
    color:fTextColor
    Component.onCompleted: {
        width += 25
        height +=12
    }
    padding: 6
    horizontalAlignment: Text.AlignHCenter



}

