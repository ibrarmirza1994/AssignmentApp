//
//  BeneficiaryListViewController.swift
//  Assignment
//
//  Created by Ibrar Ahmed on 20/08/2023.
//

import UIKit

class BeneficiaryListViewController: UIViewController {

    @IBOutlet weak var tblView: UITableView!
    var beneficiaryList = [BeneficiaryModel]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.configTableView()
    }
    func configTableView(){
        //Set TableView Delegate and DataSource
        self.tblView.delegate = self
        self.tblView.dataSource = self
        //Register TableViewCell Nib
        self.tblView.register(UINib.init(nibName: TableViewCell.BeneficiaryCell, bundle: nil), forCellReuseIdentifier: TableViewCell.BeneficiaryCell)
        //Get BeneficiaryList Array
        self.getBeneficiaryList()
    }
    func getBeneficiaryList(){
        if let record = BeneficiaryViewModel().parseJSONData(){
            self.beneficiaryList = record
            self.tblView.reloadData()
        }
    }
}
//TableView Delegates
extension BeneficiaryListViewController:UITableViewDelegate,UITableViewDataSource
{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.beneficiaryList.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: TableViewCell.BeneficiaryCell, for: indexPath) as? BeneficiaryCell{
            // Configure BeneficiaryCell using object
            cell.configure(object:  self.beneficiaryList[indexPath.row])
            return cell
        }
        return UITableViewCell()
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = BeneficiaryDetailViewController.instantiate(appStoryboard: .Main)
        vc.selectedBeneficiary = self.beneficiaryList[indexPath.row]
        self.navigationController?.pushViewController(vc, animated: true)
    }
}

