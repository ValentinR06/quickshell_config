// shell.qml
import Quickshell
import "./modules/bar"
//import "./modules/osd"

Scope {
    // Quickshell evaluates your monitors and maps windows to them
    Bar { }
    //VolumeOSD { }
}
