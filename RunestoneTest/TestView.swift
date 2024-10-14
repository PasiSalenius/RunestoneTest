//
//  TestView.swift
//  RunestoneTest
//
//  Created by Pasi Salenius on 14.10.2024.
//

import Cocoa

final class TestView: NSView {
    
    let someView = TransparentView()
    
    init() {
        super.init(frame: .zero)
        
        wantsLayer = true
        layer?.backgroundColor = NSColor.systemBlue.cgColor
        
        addSubview(someView)
        someView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            someView.topAnchor.constraint(equalTo: topAnchor),
            someView.leadingAnchor.constraint(equalTo: leadingAnchor),
            someView.trailingAnchor.constraint(equalTo: trailingAnchor),
            someView.bottomAnchor.constraint(equalTo: bottomAnchor),
        ])
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
