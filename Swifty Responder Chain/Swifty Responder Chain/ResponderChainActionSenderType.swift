//
//  ResponderChainActionSenderType.swift
//  Swifty Responder Chain
//
//  Created by Brandon Alexander on 4/28/16.
//  Copyright © 2016 Black Pixel. All rights reserved.
//

import Foundation
import UIKit

protocol ResponderChainActionSenderType {
}

extension ResponderChainActionSenderType {
    func sendNilTargetedAction(selector: Selector, sender: AnyObject?, forEvent event: UIEvent? = nil) -> Bool {
        let application = UIApplication.sharedApplication()
        if application.targetForAction(selector, withSender: sender) == nil {
            print("\(selector) not handled")
        }
        
        return application.sendAction(selector, to: nil, from: sender, forEvent: event)
    }
}