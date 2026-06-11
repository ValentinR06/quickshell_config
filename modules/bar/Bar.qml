import Quickshell

Scope {
  Variants {
    model: Quickshell.screens

    PanelWindow {
      required property var modelData
      screen: modelData

      property real margin: 8

      anchors {
        top: true
      }

      implicitHeight: child.height + margin * 2
      implicitWidth: child.implicitWidth + margin * 2

      ClockWidget {
        id: child
        anchors.centerIn: parent
      }
    }
  }
}

