//
//  TableComponentProtocol.swift
//  TableViewCellProtocol
//
//  Created by 王富生 on 2018/7/4.
//  Copyright © 2018年 王富生. All rights reserved.
//

import UIKit

protocol TableCompomentViewModel {
    var model: Model { get }
    func cellInstance(tableView: UITableView, atIndexPath indexPath: IndexPath) -> TableCompomentCell
}

protocol TableCompomentCell {
    func configure(withViewModel viewModel: TableCompomentViewModel, fromIndexPath indexPath: IndexPath)
}
