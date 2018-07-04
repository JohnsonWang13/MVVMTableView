//
//  ViewModel.swift
//  TableViewCellProtocol
//
//  Created by 王富生 on 2018/7/4.
//  Copyright © 2018年 王富生. All rights reserved.
//

import Foundation

class ViewModel {

//    var models = [Model]()
    
    var tableComponentViewModel = [TableCompomentViewModel]()

    init() {
        setUpModel()
    }

    private func setUpModel() {
        
//        for i in 0..<10 {
//            let title = "\(i)"
//            let description = "\(i)\n\(i)\n\(i)\n\(i)"
//            models.append(Model(title: title, description: description))
//        }
        
        for i in 0..<10 {
            let title = "\(i)"
            let description = "\(i)\n\(i)\n\(i)\n\(i)"
            let model = Model(title: title, description: description)
            
            tableComponentViewModel.append(TitleCellViewModel(model: model))
            tableComponentViewModel.append(DescriptionCellViewModel(model: model))
        }
    }
}
