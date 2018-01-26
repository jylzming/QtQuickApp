import QtQuick 2.4
import QtQuick.Window 2.0
//标题部分
Rectangle{
    id: titleBar;
    width: parent.width;
    height: 70;
    color: "#17202C" //color: "#777777"
   /* gradient: Gradient {
        GradientStop { position: 0.0; color: "#17202C" }
        GradientStop { position: 0.5; color: "#777777" }
    }*/

    MouseArea {
        id: mouse
        anchors.fill: parent
        drag.target: parent.parent
        property point clickPos: "0,0"
        acceptedButtons: Qt.LeftButton //只处理鼠标左键
        onPressed: { //接收鼠标按下事件
            console.log("titleBar Pressed!");
            clickPos  = Qt.point(mouse.x,mouse.y);
        }
        onClicked: {
            console.log("titleBar click!")
        }

        onDoubleClicked: {
            console.log("titleBar Double click!")
            if(myMainWindow.visibility == Window.Windowed){
                myMainWindow.visibility = Window.FullScreen;
            }
            else{
                myMainWindow.visibility = Window.Windowed;
            }
        }
        onPositionChanged: {
            if(myMainWindow.visibility == Window.Windowed) {
                var delta = Qt.point(mouse.x-clickPos.x, mouse.y-clickPos.y)
                myMainWindow.setX(myMainWindow.x+delta.x)
                myMainWindow.setY(myMainWindow.y+delta.y)
            }
        }
    }

    Image {
        id: image_logo
        width: 50
        height: 50
        source: "qrc:/ICON/tinoya.png"
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: 20
        anchors.topMargin: 10
    }
    Column {
        id: titleText
        spacing: 5
        anchors.left: image_logo.right
        anchors.top: image_logo.top
        anchors.bottom: image_logo.bottom
        anchors.leftMargin: 20
        Text {
            id: logoCNname
            text: qsTr("天眼预警联动")
            font.family: "宋体"
            font.pointSize: 14
            font.weight: Font.DemiBold
            color: "#FFFFFF"
        }
        Text {
            id: logoENname
            text: qsTr("Tinoya System")
            font.family: "Helvetica"
            font.pointSize: 14
            font.weight: Font.DemiBold
            color: "#EEEEEE"
        }
    }

    Text {
        id: user
        text: qsTr("Admin")
        font.family: "Helvetica"
        font.pointSize: 14
        font.weight: Font.DemiBold
        color: "#EEEEEE"
        anchors.right: btnSet.left
        anchors.verticalCenter: parent.verticalCenter
        anchors.rightMargin: 30
    }
    Image {
        id: btnSet
        source: "qrc:/ICON/btnSetting1.png"
        width: 35
        height: 35
        anchors.right: separateRect.left
        anchors.verticalCenter: parent.verticalCenter
        anchors.rightMargin: 20
    }

    //分隔条
    Rectangle{
        id: separateRect
        width: 1
        height: 35
        color: "#505050"
        anchors.right: btnWindow.left
        anchors.verticalCenter: parent.verticalCenter
        anchors.rightMargin: 20
    }

    //添加控制最大最小关闭按钮
    Row{
        id: btnWindow
        spacing: 16;
        anchors.verticalCenter: parent.verticalCenter;
        anchors.right: parent.right;
        anchors.rightMargin: 20;

        //最小化
        Image{
            id: btnMini;
            width: 40
            height: 40
            anchors.verticalCenter: parent.verticalCenter;
            source: "qrc:/ICON/btnMini1.png";
            opacity: miniArea.containsMouse ? 1.0 : 0.5;
            MouseArea{
                id: miniArea;
                anchors.fill: parent;
                hoverEnabled: true;
                acceptedButtons: Qt.LeftButton;
                onClicked: {
                    console.log("minimiun click!");
                    if(myMainWindow == null)
                        return;
                    myMainWindow.visibility = Window.Minimized;
                }
            }
        }

        //最大化
        Rectangle{
            width: 40;
            height: 40;
            color: "#17202C";
            Rectangle{
                id: btnMaximum;
                anchors.centerIn: parent;
                anchors.verticalCenter: parent.verticalCenter
                width: 25;
                height: 16;
                border.width: 2;
                border.color: maxiArea.containsMouse ? "#FFFFFF" : "#858585";
                color: "#17202C";
                radius: 2;
            }
            MouseArea{
                id: maxiArea
                anchors.fill: parent;
                hoverEnabled: true;
                acceptedButtons: Qt.LeftButton
                propagateComposedEvents: true;
                onReleased: {
                    console.log("maximun click!");
                    if(myMainWindow == null)
                        return;
                    if(myMainWindow.visibility == Window.FullScreen)
                    {myMainWindow.showNormal(); console.log("Clicked, to fullscreen")}
                    else{
                        myMainWindow.visibility = Window.FullScreen; console.log("Clicked, to normal window")}
                }
            }

        }

        //关闭
        Image{
            id: btnClose;
            width: 40
            height: 40
            anchors.verticalCenter: parent.verticalCenter;
            source: "qrc:/ICON/btnClose1.png";
            opacity: closeArea.containsMouse ? 1.0 : 0.5;

            MouseArea{
                id: closeArea;
                anchors.fill: parent;
                acceptedButtons: Qt.LeftButton;
                hoverEnabled: true;
                propagateComposedEvents: true
                onReleased: {
                    console.log("close click!");
                    if(myMainWindow == null)
                        return;
                    myMainWindow.close();
                }
            }
        }
    }
}


