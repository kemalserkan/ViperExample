//
//  ViewController.swift
//  ViperExample
//
//  Created by Kemal Serkan YILDIRIM on 2.07.2019.
//  Copyright © 2019 Kemal Serkan YILDIRIM. All rights reserved.
//

import UIKit

protocol ViperView: class {
    func updateTitle(title: String) -> (Void )
}

class ViperViewController: UIViewController {

    @IBOutlet weak var helloLabel: UILabel!
    
    var presenter : ViperPresentation!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.presenter.viewDidLoad()
        
    }


}

extension ViperViewController : ViperView {
    func updateTitle(title: String) {
        helloLabel.text = title
    }
}
