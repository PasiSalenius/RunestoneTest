//
//  TransparentView.swift
//  RunestoneTest
//
//  Created by Pasi Salenius on 14.10.2024.
//

import Cocoa

final class TransparentView: NSView {
    
    override func hitTest(_ point: NSPoint) -> NSView? {
        return nil
    }
    
}
