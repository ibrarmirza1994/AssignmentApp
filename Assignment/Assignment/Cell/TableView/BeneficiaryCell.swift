//
//  BeneficiaryCell.swift
//  Assignment
//
//  Created by Ibrar Ahmed on 20/08/2023.
//

import UIKit

class BeneficiaryCell: UITableViewCell {
    
    @IBOutlet weak var firstNameLabel: UILabel!
    @IBOutlet weak var lastNameLabel: UILabel!
    @IBOutlet weak var typeLabel: UILabel!
    @IBOutlet weak var designationLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    func configure(object:BeneficiaryModel){
        if let firstName = object.firstName {
            self.firstNameLabel.text = "First Name: " + firstName
        }
        if let lastName = object.lastName {
            self.lastNameLabel.text = "Last Name: " + lastName
        }
        if let type = object.beneType {
            self.typeLabel.text = "Type: " + type
        }
        if let designation = object.designationCode {
            self.designationLabel.text = designation == "P" ? "Designation: Primary" : "Designation: Contingent"
        }
    }
}
