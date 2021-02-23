//
//  ViewController.swift
//  ContentSizedInnerTable
//
//  Created by Fernando on 19/2/2021.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var outerTable: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}
extension ViewController: UITableViewDelegate{
    
}
extension ViewController: UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if tableView == outerTable{
            return DataModel.shared.allOrders.count
        }else{
            return DataModel.shared.allOrders[tableView.tag].selectedProducts.count
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if tableView == outerTable{
            let allOrders = DataModel.shared.allOrders
            guard allOrders.count >= indexPath.row else{
                fatalError("Cannot access element in DataModel.shared.allOrders, out of bounce")
            }
            let order = allOrders[indexPath.row]
            if let cell = tableView.dequeueReusableCell(withIdentifier: "OuterTableCell") as? OuterTableTableViewCell{
                cell.outerCellLabel.text = String(describing: order.orderNum)
                cell.innerTable.layer.cornerRadius = 10
                cell.innerTable.layer.borderWidth = 1
                cell.innerTable.layer.borderColor = UIColor.black.cgColor
                cell.innerTable.tag = indexPath.row
                cell.setTableViewDataSourceDelegate(self, forRow: indexPath.row)
                return cell
            }
        }else{
            let allOrders = DataModel.shared.allOrders
            
            guard allOrders.count >=  tableView.tag else{
                fatalError("Cannot access element in DataModel.shared.allOrders, out of bounce")
            }
            let order = allOrders[tableView.tag]
            guard indexPath.row < order.selectedProducts.count else{
                fatalError("Out of bounce - tableView.tag: \(tableView.tag) indexPath.row: \(indexPath.row)")
            }
            let cell = tableView.dequeueReusableCell(withIdentifier: "InnerTableCell", for: indexPath) as! InnerTableTableViewCell
            let selectedProduct = order.selectedProducts[indexPath.row]
            let product = selectedProduct.product
            
            cell.label1.text = product.productName + " X " + String(describing: selectedProduct.quantity)
            cell.descriptionLabel1.text = product.productDescription
            cell.label2.text = String(describing: product.price)
            
            return cell
        }
        return UITableViewCell()
    }
    
    
}
