import QtQuick
import "widgets"

Window {
    id: mainFraim
    width: 800
    height: 480
    visible: true
    title: qsTr("Dashboard")
    Row {
        anchors.centerIn: parent
        anchors.margins: 20
        spacing: 20
        // WeatherWidget.qml to instantiate the WeatherWidget component
        WeatherWidget {

            MouseArea {
                anchors.fill: parent
                onClicked: {
                    weatherModalLoader.source = "modals/WeatherModal.qml"
                    weatherModalLoader.visible = true
                }
            }
        }
        CalendarWidget {

        }
    }

    Loader {
        id: weatherModalLoader
        anchors.fill: parent
        visible: false

        onLoaded: {
            if (item && item.closeRequested) {
                item.closeRequested.connect(function() {
                    weatherModalLoader.visible = false
                });
            }
        }
    }
}
