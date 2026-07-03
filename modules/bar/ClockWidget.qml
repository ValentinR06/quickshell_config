import Quickshell
import QtQuick
import qs

Text {
  font {
    pixelSize: Colors.fontSize;
    family: Colors.fontFamily
    bold: true
  }
  color: Colors.fg
  text: Time.time
}

