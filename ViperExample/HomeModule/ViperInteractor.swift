//
//  HomeInteractor.swift
//  ViperExample
//
//  Created by Kemal Serkan YILDIRIM on 2.07.2019.
//  Copyright © 2019 Kemal Serkan YILDIRIM. All rights reserved.
//

protocol ViperInteraction {
    func getTitle() -> ViperModel
}

class ViperInteractor {
    
}

extension ViperInteractor : ViperInteraction {
    
    func getTitle() -> ViperModel {
        return ViperModel(title: "Hello VIPER")
    }
    
   
}

