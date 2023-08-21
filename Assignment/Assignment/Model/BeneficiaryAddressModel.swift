//
//  BeneficiaryAddressModel.swift
//  Assignment
//
//  Created by Ibrar Ahmed on 20/08/2023.
//

import Foundation

struct BeneficiaryAddressModel: Decodable {
    let firstLineMailing: String?
    let scndLineMailing: String?
    let city: String?
    let zipCode: String?
    let stateCode: String?
    let country: String?
}
