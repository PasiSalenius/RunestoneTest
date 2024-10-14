//
//  ResponderView.swift
//  RunestoneTest
//
//  Created by Pasi Salenius on 14.10.2024.
//

import Cocoa

final class ResponderView: NSView {
    
    init() {
        super.init(frame: .zero)
        
        wantsLayer = true
        layer?.backgroundColor = NSColor.systemBlue.cgColor
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override var acceptsFirstResponder: Bool { true }
    
    override func becomeFirstResponder() -> Bool {
        layer?.backgroundColor = NSColor.systemRed.cgColor
        
        return true
    }
    
    override func resignFirstResponder() -> Bool {
        layer?.backgroundColor = NSColor.systemBlue.cgColor
        
        return true
    }
    
}
