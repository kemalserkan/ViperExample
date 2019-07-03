//
//  HomeModuleBuilder.swift
//  ViperExample
//
//  Created by Kemal Serkan YILDIRIM on 2.07.2019.
//  Copyright © 2019 Kemal Serkan YILDIRIM. All rights reserved.
//

import UIKit

class ViperModuleBuilder {
    
    static func build() -> UIViewController {
        
        let storyboard = UIStoryboard.init(name: "Main", bundle: nil)
        let view = storyboard.instantiateViewController(withIdentifier: "HomeViewController") as! ViperViewController
        let interactor = ViperInteractor()
        let router = ViperRouter(viewController: view )
        
        let presenter = ViperPresenter( view: view, interactor: interactor, router: router)
        view.presenter = presenter
        
        return view
    }
}
