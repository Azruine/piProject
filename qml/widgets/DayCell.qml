import QtQuick

Rectangle {
    id: dayCell
    width: 40
    height: 40
    color: "#3B4A5A"
    radius: 5
    property date cellDate: new Date()
    property bool currentMonth: true

    Text {
        anchors.centerIn: parent
        text: cellDate.getDate()
        font.pixelSize: 16
        color: {
            var d = cellDate.getDay();
            if(d === 0) return "red";
            else if(d === 6) return "blue";
            else return "white";
        }
        opacity: currentMonth ? 1.0 : 0.5
    }
}
