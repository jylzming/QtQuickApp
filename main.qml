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

Window {
    id: myMainWindow
    visible: true
    width: 1127
    height: 851
    title: qsTr("HomePage")
    minimumWidth: 1200
    minimumHeight: 851
    flags: Qt.Window | Qt.FramelessWindowHint


    Rectangle{
        anchors.centerIn: parent;
        width: parent.width - 2;
        height: parent.height - 2;

        //标题部分
        TitleBar{
            id: titleBar;
            width: parent.width;
            height: 70;
            color: "#17202C"
        }

        //主体部分
        MainWidget {
            id: mainRect
            anchors.top: titleBar.bottom;
            anchors.left: parent.left;
            anchors.right: parent.right;
            anchors.bottom:statusBar.top
            width: parent.width;
            color: "#CCCCCC" //color: "#2E2F30"
        }

        //状态栏部分
        SliderBar {
            id: statusBar;
            width: parent.width;
            height: 50;
            anchors.left: parent.left
            anchors.bottom: parent.bottom
            color: "#152830"
        }
    }
}
