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

      height: 30

      RowLayout {
        id: layout
        anchors.fill: parent

        WorkspaceWidget {
          id: workspaceWidget
        }

        ClockWidget {
          id: clockWidget
        }


      }
    }
  }
}

