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
    func setTableViewData(_ tableViewData: [TableViewModel])
}

class ViperViewController: UIViewController {

    @IBOutlet weak var helloLabel: UILabel!
    @IBOutlet weak var viperTableView: UITableView!
    
    var presenter : ViperPresentation!
    var tableViewData : [TableViewModel]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.tableViewData = [TableViewModel]()
        
        self.presenter.viewDidLoad()
        
    }


}

extension ViperViewController : ViperView {
    func updateTitle(title: String) {
        helloLabel.text = title
    }
    
    func setTableViewData(_ tableViewData: [TableViewModel]) {
        self.tableViewData = tableViewData
        viperTableView.reloadData()
    }
}

extension ViperViewController : UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.tableViewData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "customTableviewCell", for: indexPath) as! CustomTableViewCell
        
        let oneTableViewData = self.tableViewData[indexPath.row]
//        let post = postList[indexPath.row]
//        cell.set(forPost: post)
        
        cell.cellTitleLabel.text = oneTableViewData.title
        cell.cellSubTitleLabel.text = oneTableViewData.subTitle
        
        return cell
    }
    
    
}
