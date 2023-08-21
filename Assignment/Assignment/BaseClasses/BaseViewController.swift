//
//  BaseViewController.swift
//  Assignment
//
//  Created by Ibrar Ahmed on 20/08/2023.
//

import UIKit

class BaseViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    func convertSecondsToDate(_ secondsString: String) -> String? {
        guard let seconds = TimeInterval(secondsString) else {
            return nil
        }
        let referenceDate = Date(timeIntervalSinceReferenceDate: seconds)
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MM/dd/yyyy"
        return dateFormatter.string(from: referenceDate)
    }
}
