//
//  Enums.swift
//  Assignment
//
//  Created by Ibrar Ahmed on 20/08/2023.
//

import UIKit

enum AppStoryboard : String {
    case Main
    var instance: UIStoryboard {
        return UIStoryboard(name: self.rawValue, bundle: Bundle.main)
    }
    func viewController<T: UIViewController>(viewControllerClass: T.Type) -> T {
        let storyboardID = (viewControllerClass as UIViewController.Type).storyboardID
        return instance.instantiateViewController(withIdentifier: storyboardID) as! T
    }
    func initialViewController() -> UIViewController? {
        return instance.instantiateInitialViewController()
    }
}
