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
import "./components"

//主体部分
Rectangle{
    id: mainRect
    anchors.top: titleBar.bottom;
    anchors.left: parent.left;
    anchors.right: parent.right;
    anchors.bottom:statusBar.top
    width: parent.width;
    color: "#CCCCCC" //color: "#2E2F30"

    LightPage {
        id:lightRect
        visible: false
    }

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
            opacity: lightArea.containsMouse? 0.5:1.0

            MouseArea{
                id: lightArea;
                anchors.fill: parent;
                acceptedButtons: Qt.LeftButton;
                hoverEnabled: true
                onReleased: {
                    console.log("lightImg click!");
                    lightRect.visible = true
                    mainRect.visible = false

                }
            }
        }
        Image {
            id: image_warning
            width: 200
            height: 200
            source: "qrc:/center/home_21.jpg"
            opacity: warningArea.containsMouse? 0.5:1.0
            MouseArea{
                id: warningArea;
                anchors.fill: parent;
                acceptedButtons: Qt.LeftButton;
                hoverEnabled: true
                onReleased: {
                    console.log("warningImg click!");
                }
            }
        }
        Image {
            id: image_moto
            width: 200
            height: 200
            source: "qrc:/center/home_23.jpg"
            opacity: motoArea.containsMouse? 0.5:1.0
            MouseArea{
                id: motoArea;
                anchors.fill: parent;
                acceptedButtons: Qt.LeftButton;
                hoverEnabled: true
                onReleased: {
                    console.log("motoImg click!");
                }
            }
        }
        Image {
            id: image_police
            width: 200
            height: 200
            source: "qrc:/center/home_25.jpg"
            opacity: policeArea.containsMouse? 0.5:1.0
            MouseArea{
                id: policeArea;
                anchors.fill: parent;
                acceptedButtons: Qt.LeftButton;
                hoverEnabled: true
                onReleased: {
                    console.log("policeImg click!");
                }
            }
        }


        Image {
            id: image_danger
            width: 200
            height: 200
            source: "qrc:/center/home_35.jpg"
            opacity: dangerArea.containsMouse? 0.5:1.0
            MouseArea{
                id: dangerArea;
                anchors.fill: parent;
                acceptedButtons: Qt.LeftButton;
                hoverEnabled: true
                onReleased: {
                    console.log("dangerImg click!");
                }
            }
        }
        Image {
            id: image_wifi
            width: 200
            height: 200
            source: "qrc:/center/home_37.jpg"
            opacity: wifiArea.containsMouse? 0.5:1.0
            MouseArea{
                id: wifiArea;
                anchors.fill: parent;
                acceptedButtons: Qt.LeftButton;
                hoverEnabled: true
                onReleased: {
                    console.log("wifiImg click!");
                }
            }
        }
        Image {
            id: image_carpark
            width: 400
            height: 200
            source: "qrc:/center/home_38.jpg"
            Layout.columnSpan: 2
            opacity: carparkArea.containsMouse? 0.5:1.0
            MouseArea{
                id: carparkArea;
                anchors.fill: parent;
                acceptedButtons: Qt.LeftButton;
                hoverEnabled: true
                onReleased: {
                    console.log("carparkImg click!");
                }
            }
        }
        Image {
            id: image_flood
            width: 200
            height: 200
            source: "qrc:/center/home_39.jpg"
            opacity: floodArea.containsMouse? 0.5:1.0
            MouseArea{
                id: floodArea;
                anchors.fill: parent;
                acceptedButtons: Qt.LeftButton;
                hoverEnabled: true
                onReleased: {
                    console.log("floodImg click!");
                }
            }
        }

        Image {
            id: image_question
            width: 200
            height: 200
            source: "qrc:/center/home_51.jpg"
            opacity: questionArea.containsMouse? 0.5:1.0
            MouseArea{
                id: questionArea;
                anchors.fill: parent;
                acceptedButtons: Qt.LeftButton;
                hoverEnabled: true
                onReleased: {
                    console.log("questionImg click!");
                }
            }
        }
        Image {
            id: image_camera
            width: 400
            height: 200
            source: "qrc:/center/home_52.jpg"
            Layout.columnSpan: 2
            opacity: cameraArea.containsMouse? 0.5:1.0
            MouseArea{
                id: cameraArea;
                anchors.fill: parent;
                acceptedButtons: Qt.LeftButton;
                hoverEnabled: true
                onReleased: {
                    console.log("cameraImg click!");
                }
            }
        }
        Image {
            id: image_dust
            width: 200
            height: 200
            source: "qrc:/center/home_49.jpg"
            opacity: dustArea.containsMouse? 0.5:1.0
            MouseArea{
                id: dustArea;
                anchors.fill: parent;
                acceptedButtons: Qt.LeftButton;
                hoverEnabled: true
                onReleased: {
                    console.log("dustImg click!");
                }
            }
        }
        Image {
            id: image_slide
            width: 200
            height: 200
            source: "qrc:/center/home_50.jpg"
            opacity: slideArea.containsMouse? 0.5:1.0
            MouseArea{
                id: slideArea;
                anchors.fill: parent;
                acceptedButtons: Qt.LeftButton;
                hoverEnabled: true
                onReleased: {
                    console.log("slideImg click!");
                }
            }
        }
    }
}

