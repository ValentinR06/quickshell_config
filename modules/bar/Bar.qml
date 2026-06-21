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
      color: Colors.bg

      anchors {
        top: true
        left: true
        right: true
      }

      height: 32

      RowLayout {
        id: layout
        anchors.fill: parent
        anchors.leftMargin: 14
        anchors.rightMargin: 14

        spacing: 10


        WorkspaceWidget {
          id: workspaceWidget
        }

        Item { Layout.fillWidth: true }


        BatteryWidget {
          id: batteryWidget
        }

        ClockWidget {
          id: clockWidget
        }

      }
    }
  }
}

