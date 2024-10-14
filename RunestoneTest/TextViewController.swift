//
//  TextViewController.swift
//  RunestoneTest
//
//  Created by Pasi Salenius on 14.10.2024.
//

import Cocoa

final class TextViewController: NSViewController {

    let textView = NSTextView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        textView.isEditable = true
        textView.string = "Hello, World!"

        view.addSubview(textView)
        textView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            textView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            textView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            textView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            textView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
        ])
    }
    
}
