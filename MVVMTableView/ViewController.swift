//
//  ViewController.swift
//  TableViewCellProtocol
//
//  Created by 王富生 on 2018/7/4.
//  Copyright © 2018年 王富生. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myTableView: UITableView!
    
    var viewModel = ViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        settingTableView()
    }
}

// MARK: - TableView Setting
extension ViewController {
    fileprivate func settingTableView() {
        myTableView.delegate = self
        myTableView.dataSource = self
        
//        var nib = UINib(nibName: "TitleCell", bundle: nil)
//        myTableView.register(nib, forCellReuseIdentifier: "TitleCell")
//        nib = UINib(nibName: "DescriptionCell", bundle: nil)
//        myTableView.register(nib, forCellReuseIdentifier: "DescriptionCell")
    }
}

// MARK: - TableView Delegate
extension ViewController: UITableViewDelegate {
    
}

// MARK: - TableView DataSource
extension ViewController: UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
//        return viewModel.models.count
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return 2
        return viewModel.tableComponentViewModel.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
//        switch indexPath.row {
//        case 0:
//            let cell = tableView.dequeueReusableCell(withIdentifier: "TitleCell") as! TitleCell
//
//            let cellViewModel = TitleCellViewModel(model: viewModel.models[indexPath.section])
//            cell.titleLabel.text = cellViewModel.model.title
//
//            return cell
//
//        case 1:
//            let cell = tableView.dequeueReusableCell(withIdentifier: "DescriptionCell") as! DescriptionCell
//
//            let cellViewModel = DescriptionCellViewModel.init(model: viewModel.models[indexPath.section])
//            cell.descriptionLabel.text = cellViewModel.model.description
//
//            return cell
//
//        default: break
//        }
        
        let cell = viewModel.tableComponentViewModel[indexPath.row].cellInstance(tableView: tableView, atIndexPath: indexPath)
        cell.configure(withViewModel: viewModel.tableComponentViewModel[indexPath.row], fromIndexPath: indexPath)
        
        return cell as! UITableViewCell
        
//        return UITableViewCell()
    }
}
