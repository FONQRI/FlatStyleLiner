import QtQuick 2.9
import QtQuick.Controls 2.2
import QtGraphicalEffects 1.0
Button{
    property color  borderColor: "#f7f7f7"
    property color  firstBackGroundColor: "#03A9F4"
    property color secondBackgroundColor: "#2196F3"
    property color  textColor: "white"
    property string fText: "Login"
    DropShadow {
        z: -1
        anchors.fill: root
        horizontalOffset: 1
        verticalOffset: 1
        radius: 8.0
        samples: 10
        color: "#2196F3"
        source: root
    }


    Component.onCompleted: {
        width += 25
        height +=12
    }

    contentItem:  Text {
        id:mtext
        z:1
        anchors.centerIn: parent
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        color: textColor

        font.weight  :           Font.Medium
        text: qsTr(fText)
    }
    background: Rectangle{
        id:root
        color: pressed ?secondBackgroundColor:firstBackGroundColor
        radius: parent.width/2



    }
}
