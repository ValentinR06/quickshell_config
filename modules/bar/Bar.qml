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

      implicitHeight: 32
      Item {
        anchors.fill: parent
        anchors.leftMargin: 14
        anchors.rightMargin: 14

        RowLayout {
          anchors.left: parent.left
          anchors.verticalCenter: parent.verticalCenter
          
          WorkspaceWidget {
            id: workspaceWidget
          }
        }

        RowLayout {
          anchors.centerIn: parent
          
          ClockWidget {
            id: clockWidget
          }
        }

        RowLayout {
          anchors.right: parent.right
          anchors.verticalCenter: parent.verticalCenter
          spacing: 10
          
          
          BluetoothWidget {
            id: bluetoothWidget
          }

          WifiWidget {
            id: wifiWidget
          }

          BatteryWidget {
            id: batteryWidget
          }
        }
      }
    }
  }
}

