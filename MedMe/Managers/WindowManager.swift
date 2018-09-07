//
//  WindowManager.swift
//  ErikasLibrary
//
//  Created by Erika de Almeida Segatto on 05/09/18.
//  Copyright © 2018 Erika de Almeida Segatto. All rights reserved.
//

import Foundation
import UIKit

enum Storyboard {
//    case auth(serverUrl: String, credentials: DeepLinkCredentials?)
//    case chat
//    case preferences
    
    var name: String {
//        switch self {
//        case .auth:
//            return "Auth"
//        }
        return ""
    }
    
    func instantiate() -> UIStoryboard {
        return UIStoryboard(name: name, bundle: Bundle.main)
    }
    
    func initialViewController() -> UIViewController? {
        let storyboardChat = UIStoryboard(name: name, bundle: Bundle.main)
        let controller = storyboardChat.instantiateInitialViewController()
        
        // preload view
        _ = controller?.view
        
//        switch self {
//        case let .auth(serverUrl, credentials):
//            let navigationController = (controller as? UINavigationController)
//            let controller = navigationController?.topViewController as? ConnectServerViewController
//            _ = controller?.view
//            controller?.textFieldServerURL.text = serverUrl
//
//            if serverUrl.count > 0 {
//                controller?.connect()
//                controller?.deepLinkCredentials = credentials
//            }
//        default:
//            break
//        }
        
        return controller
    }
}

class WindowManager {
    
    /**
     This method will transform the keyWindow.rootViewController
     into the initial view controller of storyboard with name param.
     
     - parameter name: The name of the Storyboard to be instantiated.
     - parameter transitionType: The transition to open new view controller.
     */
    static func open(_ storyboard: Storyboard, transitionType: String = kCATransitionFade) {
        let controller = storyboard.initialViewController()
        let application = UIApplication.shared
        
        if let window = application.windows.first, let controller = controller {
            let transition = CATransition()
            transition.type = transitionType
            window.set(rootViewController: controller, withTransition: transition)
        }
    }
    
}
