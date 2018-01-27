import QtQuick 2.0

Rectangle{
    id: lightRect
    anchors.top: titleBar.bottom;
    anchors.left: parent.left;
    anchors.right: parent.right;
    anchors.bottom:statusBar.top
    width: parent.width;
    color: "#CCCCCC"

    Text {
        id: text1
        text: qsTr("Tinoya System")
        font.family: "Helvetica"
        font.pointSize: 14
        font.weight: Font.DemiBold
        color: "#EEEEEE"
    }
}
