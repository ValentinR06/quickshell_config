import Quickshell
import QtQuick.Layouts
import QtQuick
import qs

Scope {
  Variants {
    model: Quickshell.screens

    PanelWindow {
      required property var modelData
      screen: modelData
      color: "transparent"

      property real margin: 8

      anchors {
        top: true
      }

      implicitHeight: layout.implicitHeight + margin
      implicitWidth: layout.implicitWidth + margin

      RowLayout {
        id: layout
        anchors.fill: parent
        spacing: 6

        Rectangle {
          color: Colors.bg
          Layout.fillWidth: true

          property real marginHeight: 6
          property real marginWidth: 40


          radius: 30

          Layout.preferredWidth: clockWidget.implicitWidth + marginWidth * 2
          Layout.preferredHeight: clockWidget.implicitHeight + marginHeight * 2
          ClockWidget {
            id: clockWidget
          }
        }
      }
    }
  }
}

