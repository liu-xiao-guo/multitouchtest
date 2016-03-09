import QtQuick 2.0
import Ubuntu.Components 1.1

/*!
    \brief MainView with a Label and Button elements.
*/

MainView {
    // objectName for functional testing purposes (autopilot-qt5)
    objectName: "mainView"

    // Note! applicationName needs to match the "name" field of the click manifest
    applicationName: "multitouchtest.liu-xiao-guo"

    /*
     This property enables the application to change orientation
     when the device is rotated. The default is false.
    */
    //automaticOrientation: true

    // Removes the old toolbar and enables new features of the new header.
    useDeprecatedToolbar: false

    width: units.gu(60)
    height: units.gu(85)

    Page {
        title: i18n.tr("multitouchtest")

        MultiPointTouchArea {
            anchors.fill: parent
            touchPoints: [
                TouchPoint { id: point1 },
                TouchPoint { id: point2 },
                TouchPoint { id: point3 },
                TouchPoint { id: point4 }
            ]
        }

        Image {
            width: parent.width/5
            height: parent.height/5
            source: "images/image1.jpg"
            x: point1.x
            y: point1.y
        }

        Image {
            width: parent.width/5
            height: parent.height/5
            source: "images/image2.jpg"
            x: point2.x
            y: point2.y
        }

        Image {
            width: parent.width/5
            height: parent.height/5
            source: "images/image3.jpg"
            x: point3.x
            y: point3.y
        }

        Image {
            width: parent.width/5
            height: parent.height/5
            source: "images/image4.jpg"
            x: point4.x
            y: point4.y
        }

    }
}

