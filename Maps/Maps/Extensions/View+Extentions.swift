//
//  View+Extentions.swift
//  Maps
//
//  Created by Seymen Nadir Elmas .
//

import Foundation
import AppKit
import SwiftUI

extension View {
    
    @discardableResult
    func openInWindow(title: String, sender: Any?) -> NSWindow {
        let controller = NSHostingController(rootView: self)
        let window = NSWindow(contentViewController: controller)
        window.contentViewController = controller
        window.title = title
        window.makeKeyAndOrderFront(sender)
        return window
    }
    
}
