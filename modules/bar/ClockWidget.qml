import QtQuick
import qs

Text {
  anchors.centerIn: parent

  font {
    pointSize: Colors.fontSize;
    family: Colors.fontFamily
    bold: true 
  }
  color: Colors.fg
  text: Time.time
}

