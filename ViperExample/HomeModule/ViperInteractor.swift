//
//  HomeInteractor.swift
//  ViperExample
//
//  Created by Kemal Serkan YILDIRIM on 2.07.2019.
//  Copyright © 2019 Kemal Serkan YILDIRIM. All rights reserved.
//

protocol ViperInteraction {
    func getTitle() -> ViperModel
    func getTableViewData() -> [TableViewModel]
}

class ViperInteractor {
    
}

extension ViperInteractor : ViperInteraction {
    
    func getTitle() -> ViperModel {
        return ViperModel(title: "Hello VIPER")
    }
    
    func getTableViewData() -> [TableViewModel] {
        var tempData: [TableViewModel] = [TableViewModel]()
        
        for index in 1...5 {
            let oneTableViewdata : TableViewModel = TableViewModel(title:"Title \(index)", subTitle: "SubTitle \(index)")
            tempData.append(oneTableViewdata)
        }
        
        return tempData
    }
}

