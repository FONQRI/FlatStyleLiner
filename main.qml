import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Window 2.0
import QtGraphicalEffects 1.0
ApplicationWindow {
    visible: true
    width: Screen.width >Screen.height ?360:Screen.width
    height: Screen.width >Screen.height ?640:Screen.height
    title: qsTr("Flat Style Liner")
    Image {
        id: backgroundImage
        source: "image/image.jpg"
        anchors.fill: parent
    }

    Rectangle {
        id: bug
        width: 250
        height: 200
        radius: 5
        anchors.fill: fastBlur
        anchors.verticalCenterOffset: -50
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter

        Column{
            anchors.fill: parent
            anchors.topMargin: 30
            spacing: 30
            FonqriTextField{
                anchors.horizontalCenter: parent.horizontalCenter
                width: (parent.width/3)*2
                property string placeholder: "username"
                color: "#fff"
                height: 35

                       Text {
                           text: parent.placeholder
                           color: "#fff"
                           visible: !parent.text
                           verticalAlignment: Text.AlignVCenter
                           anchors.verticalCenter: parent.verticalCenter
                           horizontalAlignment: Text.AlignHCenter
                           anchors.horizontalCenter: parent.horizontalCenter
                       }

                background: Rectangle{
                    color:"#606060"
                    radius: 10
                }
            }
            FonqriTextField{
                anchors.horizontalCenter: parent.horizontalCenter
                width: (parent.width/3)*2
                height: 35
                property string placeholder: "Password"
                color: "#fff"

                       Text {
                           text: parent.placeholder
                           color: "#fff"
                           visible: !parent.text
                           verticalAlignment: Text.AlignVCenter
                           anchors.verticalCenter: parent.verticalCenter
                           horizontalAlignment: Text.AlignHCenter
                           anchors.horizontalCenter: parent.horizontalCenter
                       }

                background: Rectangle{
                    color:"#606060"
                    radius: 10
                }
            }

        }
    }

    FastBlur {
        id: fastBlur

        height: 200
        width: 250
        radius: 86
        anchors.centerIn: backgroundImage
        anchors.verticalCenterOffset: -50

        opacity: 0.70

        source: ShaderEffectSource {
            sourceItem: backgroundImage
            sourceRect: Qt.rect(0, 0, fastBlur.width, fastBlur.height)
        }
    }
FonqriLinerButton{
    anchors.centerIn: parent
    anchors.verticalCenterOffset: 50
    width: 150

}

}
