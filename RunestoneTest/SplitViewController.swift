//
//  SplitViewController.swift
//  RunestoneTest
//
//  Created by Pasi Salenius on 14.10.2024.
//

import Cocoa

class SplitViewController: NSSplitViewController {

    let toolbar = NSToolbar()
    let accessory = AccessoryController()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        toolbar.displayMode = .iconOnly
        
        splitView.isVertical = true
        splitView.dividerStyle = .paneSplitter
        
        let vc0 = NSViewController()
        let vc1 = ResponderViewController()
        let vc2 = RunestoneViewController()
        let vc3 = TextViewController()
        let vc4 = TestViewController()
        let vc5 = ResponderViewController()

        let sidebarItem = NSSplitViewItem(sidebarWithViewController: vc1)
        sidebarItem.minimumThickness = 180
        sidebarItem.maximumThickness = 300
        addSplitViewItem(sidebarItem)

        let splitViewController = NSSplitViewController()
        splitViewController.splitView.isVertical = false
        splitViewController.splitView.dividerStyle = .paneSplitter

        splitViewController.addSplitViewItem(.init(contentListWithViewController: vc5))
        splitViewController.addSplitViewItem(.init(viewController: vc2))

        addSplitViewItem(.init(viewController: splitViewController))
    }
    
    override func viewDidAppear() {
        super.viewDidAppear()
        
//        view.window?.toolbar = toolbar
//        view.window?.addTitlebarAccessoryViewController(accessory)
    }

}


