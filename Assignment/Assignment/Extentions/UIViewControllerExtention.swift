//
//  UIViewControllerExtention.swift
//  Assignment
//
//  Created by Ibrar Ahmed on 20/08/2023.
//

import UIKit

extension UIViewController {
    class var storyboardID : String {
        return "\(self)"
    }
    static func instantiate(appStoryboard: AppStoryboard) -> Self {
        return appStoryboard.viewController(viewControllerClass: self)
    }
}
