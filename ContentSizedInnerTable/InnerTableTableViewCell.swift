//
//  InnerTableTableViewCell.swift
//  ContentSizedInnerTable
//
//  Created by Fernando on 22/2/2021.
//

import UIKit

class InnerTableTableViewCell: UITableViewCell {
    @IBOutlet weak var label1 : UILabel!
    @IBOutlet weak var descriptionLabel1 : UILabel!
    @IBOutlet weak var label2 : UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
