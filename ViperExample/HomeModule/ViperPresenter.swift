//
//  HomePresenter.swift
//  ViperExample
//
//  Created by Kemal Serkan YILDIRIM on 2.07.2019.
//  Copyright © 2019 Kemal Serkan YILDIRIM. All rights reserved.
//
import Foundation

protocol ViperPresentation {
    func viewDidLoad() -> Void
    
}

class ViperPresenter {
    
    weak var view: ViperView?
    var interactor: ViperInteraction
    var router: ViperRouting
    
    init(view: ViperView, interactor: ViperInteraction, router: ViperRouting) {
        self.view = view
        self.interactor = interactor
        self.router = router
    }
}

extension ViperPresenter : ViperPresentation {
    
    func viewDidLoad() {
        let homeModel = self.interactor.getTitle()
        print("home Model: \(homeModel)")
        
        DispatchQueue.main.async { 
            self.view?.updateTitle(title: homeModel.title)
        }
    }
}
