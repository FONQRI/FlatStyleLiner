import QtQuick 2.7
import QtQuick.Controls 2.2
import QtGraphicalEffects 1.0

CheckBox {
    id: control
    text: qsTr("CheckBox")
    property color  borderColor: "#2196F3"
    property color  firstBackGroundColor: "#fff"
    property color secondBackgroundColor: "#2196F3"
    property color  textColor: "#2196F3"
    onClicked: console.log(checked)
    DropShadow {
        z: -1
        anchors.fill: root
        horizontalOffset: 0
        verticalOffset: 0
        radius: checked ? 8.0:12.0
        samples: 17
        color: "#2196F3"
        source: root
    }

    indicator: Rectangle {
        id:root
        implicitWidth: 26
        implicitHeight: 26
        x: control.leftPadding
        y: parent.height / 2 - height / 2
        radius: 3
        color: checked ? firstBackGroundColor : secondBackgroundColor
        border.color:borderColor

    }

    contentItem: Text {
        text: control.text
        font: control.font
        opacity: enabled ? 1.0 : 0.3
        color: textColor
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        leftPadding: control.indicator.width + control.spacing
    }
}
