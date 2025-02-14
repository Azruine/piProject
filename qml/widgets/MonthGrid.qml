import QtQuick
import QtQuick.Layouts

Item {
    id: monthGrid
    property int month: 2
    property int year: 2025

    GridLayout {
        id: grid
        columns: 7
        rowSpacing: 5
        columnSpacing: 5
        anchors.fill: parent

        Repeater {
            id: repeater
            model: 35
            delegate: DayCell {
                property date cellDateComputed: getCellDate(index)
                cellDate: cellDateComputed
                currentMonth: (cellDateComputed.getMonth() === (month - 1))
            }
        }
    }

    function getCellDate(index) {
        var firstDate = new Date(year, month - 1, 1);
        var firstDayWeek = firstDate.getDay();
        return new Date(year, month - 1, 1 - firstDayWeek + index);
    }
}
