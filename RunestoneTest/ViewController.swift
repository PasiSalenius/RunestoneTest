//
//  ViewController.swift
//  RunestoneTest
//
//  Created by Pasi Salenius on 13.10.2024.
//

import Cocoa

class ViewController: NSViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let responderView = ResponderView()
        
        view.addSubview(responderView)
        responderView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            responderView.topAnchor.constraint(equalTo: view.topAnchor),
            responderView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            responderView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            responderView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
        ])
    }

}

