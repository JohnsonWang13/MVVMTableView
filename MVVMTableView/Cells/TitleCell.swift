//
//  TitleCell.swift
//  TableViewCellProtocol
//
//  Created by 王富生 on 2018/7/4.
//  Copyright © 2018年 王富生. All rights reserved.
//

import UIKit

class TitleCellViewModel: TableCompomentViewModel {
    
    var model: Model
    
    init(model: Model) {
        self.model = model
    }
    
    func cellInstance(tableView: UITableView, atIndexPath indexPath: IndexPath) -> TableCompomentCell {
        tableView.register(TitleCell.self)
        let cell = tableView.dequeue(TitleCell.self, indexPath: indexPath)
        return cell
    }
}

class TitleCell: UITableViewCell, TableCompomentCell {
    
    @IBOutlet weak var titleLabel: UILabel!
    
    func configure(withViewModel viewModel: TableCompomentViewModel, fromIndexPath indexPath: IndexPath) {
        guard let vm = viewModel as? TitleCellViewModel else { return }
        titleLabel.text = vm.model.title
    }
}
