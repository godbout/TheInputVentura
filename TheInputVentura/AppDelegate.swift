import AppKit
import SwiftUI


class AppDelegate: NSObject, NSApplicationDelegate {

    func applicationDidFinishLaunching(_ notification: Notification) {
        let input = Input()
        input.show()
    } 

} 
