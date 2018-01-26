import QtQuick 2.7
import QtQuick.Window 2.2
import QtScxml 5.8
import QtQuick.Controls 1.4
import QtQuick.Controls.Styles 1.4
import Qt.labs.platform 1.0
import QtCharts 2.2
import QtQuick.Layouts 1.3
import QtLocation 5.3
import QtGraphicalEffects 1.0
//主体部分
Rectangle{
    id: mainRect
    anchors.top: titleBar.bottom;
    anchors.left: parent.left;
    anchors.right: parent.right;
    anchors.bottom:statusBar.top
    width: parent.width;
    color: "#CCCCCC" //color: "#2E2F30"

    GridLayout {
        id: grid
        columns: 5
        rows: 4
        rowSpacing: 5
        columnSpacing: 5
        //Layout.alignment: Qt.AlignRight
        //x:parent.horizontalCenter
        //y:parent.verticalCenter
        anchors {
            verticalCenter: parent.verticalCenter
            horizontalCenter: parent.horizontalCenter
        }
//                anchors.horizontalCenter: parent.horizontalCenter+80
//                anchors.verticalCenter: parent.verticalCenter

        Text {
            text: "天眼联动平台    "    //a basic greeting
            font.family: "宋体"
            font.pointSize: 24
            font.weight: Font.DemiBold
            color: "#5555FF"
            Layout.alignment: Qt.AlignRight
            Layout.columnSpan: 5
        }

        Image {
            id: image_light
            width: 400
            height: 200
            source: "qrc:/center/home_19.jpg"
            Layout.columnSpan: 2
        }
        Image {
            id: image_warning
            width: 200
            height: 200
            source: "qrc:/center/home_21.jpg"
        }
        Image {
            id: image_moto
            width: 200
            height: 200
            source: "qrc:/center/home_23.jpg"
        }
        Image {
            id: image_police

            width: 200
            height: 200
            source: "qrc:/center/home_25.jpg"
        }


        Image {
            id: image_danger
            width: 200
            height: 200
            source: "qrc:/center/home_35.jpg"
        }
        Image {
            id: image_wifi
            width: 200
            height: 200
            source: "qrc:/center/home_37.jpg"
        }
        Image {
            id: image_carpark
            width: 400
            height: 200
            source: "qrc:/center/home_38.jpg"
            Layout.columnSpan: 2
        }
        Image {
            id: image_flood
            width: 200
            height: 200
            source: "qrc:/center/home_39.jpg"
        }

        Image {
            id: image_question
            width: 200
            height: 200
            source: "qrc:/center/home_51.jpg"
        }
        Image {
            id: image_camera
            width: 400
            height: 200
            source: "qrc:/center/home_52.jpg"
            Layout.columnSpan: 2
        }
        Image {
            id: image_dust
            width: 200
            height: 200
            source: "qrc:/center/home_49.jpg"
        }
        Image {
            id: image_slide
            width: 200
            height: 200
            source: "qrc:/center/home_50.jpg"
        }
    }
}
