//
//  BeneficiaryViewModel.swift
//  Assignment
//
//  Created by Ibrar Ahmed on 20/08/2023.
//

import Foundation

class BeneficiaryViewModel: NSObject {
    
    func parseJSONData() -> [BeneficiaryModel]? {
        guard let path = Bundle.main.path(forResource: JsonName.Beneficiaries, ofType: "json"),
              let jsonData = try? Data(contentsOf: URL(fileURLWithPath: path)) else {
            return nil
        }
        let decoder = JSONDecoder()
        do {
            let beneficiaries = try decoder.decode([BeneficiaryModel].self, from: jsonData)
            return beneficiaries
        } catch {
            print("Error decoding JSON: \(error.localizedDescription)")
            return nil
        }
    }
}
