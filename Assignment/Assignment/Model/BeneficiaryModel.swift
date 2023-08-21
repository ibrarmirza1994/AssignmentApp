//
//  BeneficiaryModel.swift
//  Assignment
//
//  Created by Ibrar Ahmed on 20/08/2023.
//

import Foundation

struct BeneficiaryModel: Decodable {
    let lastName: String?
    let firstName: String?
    let designationCode: String?
    let beneType: String?
    let socialSecurityNumber: String?
    let dateOfBirth: String?
    let middleName: String?
    let phoneNumber: String?
    let beneficiaryAddress: BeneficiaryAddressModel?
}


