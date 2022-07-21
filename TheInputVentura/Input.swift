import SwiftUI


class Input: NSPanel, ObservableObject {
    
    @Published var value: String = ""
    override var canBecomeKey: Bool { true }
    
    init() {
        super.init(contentRect: NSRect(), styleMask: [.nonactivatingPanel], backing: .buffered, defer: false)
        
        isFloatingPanel = true
        level = .screenSaver
        isMovableByWindowBackground = true
        backgroundColor = .clear
        
        let inputView = InputView().environmentObject(self)
        contentView = NSHostingView(rootView: inputView)
    }
        
    
    func show(text: String = "", reposition: Bool = true) {
        value = ""
        makeKeyAndOrderFront(self) 
    }
        
}
