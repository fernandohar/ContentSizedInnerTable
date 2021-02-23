//
//  dataModel.swift
//  ContentSizedInnerTable
//
//  Created by Fernando on 19/2/2021.
//

import Foundation
public class Order{
    public var selectedProducts : [SelectedProduct]
    public let orderDate : Date
    public let orderNum : Int
    init(_ orderNum : Int) {
        selectedProducts = []
        orderDate = Date()
        self.orderNum = orderNum
    }
    public func addSelectedProduct(_ selectedProduct: SelectedProduct){
        self.selectedProducts.append(selectedProduct)
    }
}

public class SelectedProduct{
    public let product : Product
    public let quantity : Int
    
    init (product : Product){
        self.product = product
        self.quantity = 1
    }
    
    init (product : Product, quantity : Int){
        self.product = product
        self.quantity = quantity
    }
}

public class Product{
    public let productName: String
    public let productDescription : String?
    public let price: Float

    init(productName : String, price: Float){
        self.productName  = productName
        self.price = price
        self.productDescription = nil
    }
    
    init(productName : String, productDescription: String, price: Float){
        self.productName = productName
        self.productDescription = productDescription
        self.price = price
    }
}
