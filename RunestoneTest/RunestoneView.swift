//
//  RunestoneView.swift
//  RunestoneTest
//
//  Created by Pasi Salenius on 14.10.2024.
//

import Cocoa
import Runestone

final class RunestoneView: NSView {
    
    let textView = TextView()
    
    init() {
        textView.wantsLayer = true

        textView.enclosingScrollView?.drawsBackground = true
        textView.enclosingScrollView?.borderType = .noBorder
        textView.enclosingScrollView?.hasVerticalScroller = true
        textView.enclosingScrollView?.hasHorizontalRuler = false
        textView.enclosingScrollView?.autoresizingMask = [.width, .height]
        textView.enclosingScrollView?.translatesAutoresizingMaskIntoConstraints = false
        
        textView.clipsToBounds = true

        textView.autoresizingMask = .width
        textView.isEditable = true

        textView.textContainerInset = NSEdgeInsets(top: 5, left: 10, bottom: 5, right: 10)
        
        textView.verticalOverscrollFactor = 0.1
        
        textView.showTabs = true
        textView.showSpaces = true
        textView.showPageGuide = false
        textView.showLineBreaks = true
        textView.showLineNumbers = true
        textView.showSoftLineBreaks = true
        textView.lineSelectionDisplayType = .disabled
        textView.isAutomaticScrollEnabled = true

        textView.characterPairs = []
        textView.characterPairTrailingComponentDeletionMode = .disabled

        // customise line endings and character wrapping to better visualise HTTP data
        textView.lineEndings = .crlf
        textView.lineBreakMode = .byCharWrapping
        
        super.init(frame: .zero)
        
        addSubview(textView)
        textView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            textView.topAnchor.constraint(equalTo: topAnchor),
            textView.leadingAnchor.constraint(equalTo: leadingAnchor),
            textView.trailingAnchor.constraint(equalTo: trailingAnchor),
            textView.bottomAnchor.constraint(equalTo: bottomAnchor),
        ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
