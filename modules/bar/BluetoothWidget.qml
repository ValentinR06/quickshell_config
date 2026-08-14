import Quickshell
import QtQuick
import QtQuick.Layouts
import qs

Item {
  implicitWidth: icon.width
  implicitHeight: icon.height
  Text {
    id : icon
    font {
      pixelSize: Colors.fontSize;
      family: Colors.fontFamily
      weight: Font.Medium
    }
    color: Colors.fg
    text: String.fromCodePoint(0xF00AF)
  }

  MouseArea {
    anchors.fill: parent
    hoverEnabled: true
    onEntered: {
      icon.color = Colors.accent
    }
    onExited: {
      icon.color = Colors.fg
    }
    onClicked: {
      Quickshell.execDetached(["kitty", "--", "bluetui"])
    }
  }
}