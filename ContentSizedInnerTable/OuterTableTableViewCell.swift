//
//  OuterTableTableViewCell.swift
//  ContentSizedInnerTable
//
//  Created by Fernando on 22/2/2021.
//

import UIKit

class OuterTableTableViewCell: UITableViewCell {
    
    @IBOutlet weak var outerCellLabel: UILabel!
    @IBOutlet weak var innerTable : UITableView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setTableViewDataSourceDelegate <D: UITableViewDelegate & UITableViewDataSource>(_ dataSourceDelegate: D, forRow row: Int){
        innerTable.delegate = dataSourceDelegate
        innerTable.dataSource = dataSourceDelegate
        
        innerTable.reloadData()
    }
    
    public override func systemLayoutSizeFitting(_ targetSize: CGSize, withHorizontalFittingPriority horizontalFittingPriority: UILayoutPriority, verticalFittingPriority: UILayoutPriority) -> CGSize {
        
        let outerLabelHeight =  self.outerCellLabel.sizeThatFits(CGSize(width: self.frame.width, height: 999)).height
        
        innerTable.frame = CGRect(x: 0, y: 0, width: innerTable.frame.width, height: 1024)
        innerTable.invalidateIntrinsicContentSize()
        innerTable.layoutIfNeeded()

        return CGSize(width: targetSize.width, height: outerLabelHeight + innerTable.contentSize.height + 40)  //outerLabelHeight's Top and Botton space, Price label's botton space
    }
}
