//
//  WindowController.swift
//  RunestoneTest
//
//  Created by Pasi Salenius on 14.10.2024.
//

import Cocoa

final class WindowController: NSWindowController {
    
    override func windowDidLoad() {
        super.windowDidLoad()
        
        window?.title = "Test"
        window?.toolbarStyle = .unified
        window?.titleVisibility = .visible
        
        window?.minSize = CGSize(width: 500, height: 300)
        
        window?.autorecalculatesKeyViewLoop = true
    }
    
}
