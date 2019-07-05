//
//  CustomTableViewCell.swift
//  ViperExample
//
//  Created by Kemal Serkan YILDIRIM on 4.07.2019.
//  Copyright © 2019 Kemal Serkan YILDIRIM. All rights reserved.
//

import UIKit

protocol CustomTableViewCellView {
    func updateTitle(title: String, subTitle: String) -> (Void )
}


class CustomTableViewCell: UITableViewCell {

    @IBOutlet weak var cellTitleLabel: UILabel!
    @IBOutlet weak var cellSubTitleLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}


extension CustomTableViewCell: CustomTableViewCellView {
    func updateTitle(title: String, subTitle: String) {
        self.cellTitleLabel.text = title
        self.cellSubTitleLabel.text = subTitle
    }
}
