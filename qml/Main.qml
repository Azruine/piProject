import QtQuick
import "widgets"

Window {
    width: 800
    height: 480
    visible: true
    title: qsTr("Dashboard")

    // WeatherWidget.qml to instantiate the WeatherWidget component
    WeatherWidget {
        anchors.centerIn: parent
    }
}
