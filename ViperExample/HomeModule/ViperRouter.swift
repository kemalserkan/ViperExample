//
//  HomeRouter.swift
//  ViperExample
//
//  Created by Kemal Serkan YILDIRIM on 2.07.2019.
//  Copyright © 2019 Kemal Serkan YILDIRIM. All rights reserved.
//

import UIKit

protocol ViperRouting {
    
}


class ViperRouter {
    
    var viewController : UIViewController
    
    init(viewController: UIViewController) {
        self.viewController = viewController
    }
}

extension ViperRouter : ViperRouting {
    
}
