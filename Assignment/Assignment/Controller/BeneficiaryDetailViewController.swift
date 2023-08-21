//
//  BeneficiaryDetailViewController.swift
//  Assignment
//
//  Created by Ibrar Ahmed on 20/08/2023.
//

import UIKit

class BeneficiaryDetailViewController: BaseViewController {
    
    @IBOutlet weak var dobLabel: UILabel!
    @IBOutlet weak var ssnLabel: UILabel!
    @IBOutlet weak var phoneNumberLabel: UILabel!
    @IBOutlet weak var addressLabel: UILabel!
    
    var selectedBeneficiary: BeneficiaryModel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setBeneficiaryDetails()
    }
    func setBeneficiaryDetails(){
        //Set Social Security Number
        if let ssn = selectedBeneficiary?.socialSecurityNumber {
            self.ssnLabel.text = "SocialSecurityNumber: " + ssn
        }
        //Convert String seconds to MM/dd/yyyy format date
        if let dateOfBirth = selectedBeneficiary?.dateOfBirth {
            if let dateString = convertSecondsToDate(dateOfBirth) {
                self.dobLabel.text = "Date of Birth: " + dateString
            }else{
                print("Invalid seconds value")
            }
        }
        //Set Phone Number
        if let phoneNumber = selectedBeneficiary?.phoneNumber {
            self.phoneNumberLabel.text = "PhoneNumber: " + phoneNumber
        }
        //Set Beneficiary Address
        self.setAddressFields()
    }
    func setAddressFields(){
        if let addressObject = selectedBeneficiary?.beneficiaryAddress {
            var address = ""
            if let firstLineMailing = addressObject.firstLineMailing {
                address = String(format: "%@ ", firstLineMailing)
            }
            if let scndLineMailing = addressObject.scndLineMailing {
                address = String(format: "%@, %@", address, scndLineMailing)
            }
            if let city = addressObject.city {
                address = String(format: "%@, %@", address, city)
            }
            if let zipCode = addressObject.zipCode {
                address = String(format: "%@, %@", address, zipCode)
            }
            if let stateCode = addressObject.stateCode {
                address = String(format: "%@, %@", address, stateCode)
            }
            if let country = addressObject.country {
                address = String(format: "%@, %@", address, country)
            }
            self.addressLabel.text = "Address: " + address
        }
    }
    @IBAction func actionBack(_ sender: UIButton){
        self.navigationController?.popViewController(animated: true)
    }
}
