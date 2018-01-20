import QtQuick 2.6
import QtQuick.Controls 2.1
import QtGraphicalEffects 1.0

BusyIndicator {
    id: control
    property color  borderColor: "#2196F3"
    property color  firstBackGroundColor: "#fff"
    property color secondBackgroundColor: "#2196F3"
    property color  textColor: "#2196F3"
    property bool fRunning: true
    MouseArea{
        anchors.fill: parent
        onClicked: fRunning=!fRunning;
    }

    running:fRunning
    contentItem: Item {
        implicitWidth: 64
        implicitHeight: 64

        Item {
            id: item
            x: parent.width / 2 - 32
            y: parent.height / 2 - 32
            width: 64
            height: 64
            opacity: control.running ? 1 : 0

            Behavior on opacity {
                OpacityAnimator {
                    duration: 2000
                }
            }

            RotationAnimator {
                target: item
                running: control.visible && control.running
                from: 0
                to: 360
                loops: Animation.Infinite
                duration: 7000
            }

            Repeater {
                id: repeater
                model: 6

                Rectangle {
                    DropShadow {

                        z: -1
                        anchors.fill: parent
                        horizontalOffset: 0
                        verticalOffset: 0
                        radius:   8.0
                        samples: 17
                        color: secondBackgroundColor
                        source: parent
                    }
                    x: item.width / 2 - width / 2
                    y: item.height / 2 - height / 2
                    implicitWidth: 10
                    implicitHeight: 10
                    radius: 5
                    color:secondBackgroundColor
                    transform: [
                        Translate {
                            y: -Math.min(item.width, item.height) * 0.5 + 5
                        },
                        Rotation {
                            angle: index / repeater.count * 360
                            origin.x: 5
                            origin.y: 5
                        }
                    ]
                }
            }
        }
    }
}
