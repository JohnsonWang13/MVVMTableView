//
//  DescriptionCell.swift
//  TableViewCellProtocol
//
//  Created by 王富生 on 2018/7/4.
//  Copyright © 2018年 王富生. All rights reserved.
//

import UIKit

class DescriptionCellViewModel: TableCompomentViewModel {
    
    var model: Model
    
    init(model: Model) {
        self.model = model
    }
    
    func cellInstance(tableView: UITableView, atIndexPath indexPath: IndexPath) -> TableCompomentCell {
        tableView.register(DescriptionCell.self)
        let cell = tableView.dequeue(DescriptionCell.self, indexPath: indexPath)
        return cell
    }
}

class DescriptionCell: UITableViewCell, TableCompomentCell {

    @IBOutlet weak var descriptionLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        descriptionLabel.numberOfLines = 0
        descriptionLabel.lineBreakMode = .byWordWrapping
    }
    
    func configure(withViewModel viewModel: TableCompomentViewModel, fromIndexPath indexPath: IndexPath) {
        guard let viewModel = viewModel as? DescriptionCellViewModel else { return }
        descriptionLabel.text = viewModel.model.description
    }
}
