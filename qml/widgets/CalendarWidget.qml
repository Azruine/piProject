import QtQuick
import QtQuick.Layouts
import QtQuick.Controls

Rectangle {
    id: calendarWidget
    width: 350
    height: 250
    color: "#2E3B4E"
    radius: 10

    ColumnLayout {
        anchors.fill: parent
        anchors.margins: 10
        spacing: 10

        // 달 제목
        Text {
            id: monthTitle
            text: "February 2025"
            font.pixelSize: 30
            color: "lightblue"
            horizontalAlignment: Text.AlignHCenter
            Layout.alignment: Qt.AlignHCenter
        }

        // 요일 헤더 (DayOfWeekRow는 미리 정의한 컴포넌트)
        DayOfWeekRow {
            Layout.fillWidth: true
        }

        // 날짜 달력 그리드 (MonthGrid)
        MonthGrid {
            id: monthGridComponent
            month: 2     // 2월
            year: 2025
            Layout.fillWidth: true
        }
    }
}
