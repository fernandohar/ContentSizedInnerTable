//
//  dataModel.swift
//  ContentSizedInnerTable
//
//  Created by Fernando on 19/2/2021.
//

import Foundation

class DataModel{
    static let shared = DataModel() //Create a singleton
    public var allOrders : [Order] = []
    private init(){
        //Define some Product
        let cokaCoka = Product(productName: "Coka Cola",  productDescription: "5oz Soda", price: 12.5)
        let cokeZero = Product(productName: "Coka Zero", productDescription: "5oz Size", price: 12.5)
        let frenchFries = Product(productName: "French Fries", price: 16.0)
        let doubleCheese = Product(productName: "Double Cheeseburger", price: 38.0)
        let cheesyAngus = Product(productName: "Cheesy Champignon Angus Burger", productDescription: "With 130g patty", price: 35.0)
        let beef_n_egg = Product(productName: "Beef and Egg Burger", productDescription: "Limited time only", price: 19.00)
        let chickenNuggets = Product(productName: "Chicken Nuggets (6 pcs)", price: 19.5)
        let spicyChicken = Product(productName: "Spicy Jalapeno Chicken Burger", productDescription:"Chicken Burger with Spicy Jalapeno Pepper and extra sauce", price: 33.0)
        let gcb = Product(productName: "GCB", productDescription: "Grilled Chicken Burger", price: 23.5)
        
        //Define Order 1 - Double Cheese burger meal
        let order1 = Order(1)
        self.allOrders.append(order1)
        order1.addSelectedProduct(SelectedProduct(product: cokaCoka))
        order1.addSelectedProduct(SelectedProduct(product: frenchFries))
        order1.addSelectedProduct(SelectedProduct(product: spicyChicken))
        
        //Define Second Order
        let order2 = Order(2)
        self.allOrders.append(order2)
        order2.addSelectedProduct(SelectedProduct(product: cokeZero, quantity: 2))
        order2.addSelectedProduct(SelectedProduct(product: frenchFries, quantity: 2))
        order2.addSelectedProduct(SelectedProduct(product: doubleCheese, quantity: 2))
        order2.addSelectedProduct(SelectedProduct(product: cheesyAngus, quantity: 2))
        order2.addSelectedProduct(SelectedProduct(product: doubleCheese, quantity: 2))
        order2.addSelectedProduct(SelectedProduct(product: spicyChicken, quantity: 2))
        
        //Define Third Order
        let order3 = Order(3)
        allOrders.append(order3)
        order3.addSelectedProduct(SelectedProduct(product: gcb, quantity: 1))
        order3.addSelectedProduct(SelectedProduct(product: spicyChicken, quantity: 3))
        order3.addSelectedProduct(SelectedProduct(product: chickenNuggets, quantity: 2))
        order3.addSelectedProduct(SelectedProduct(product: beef_n_egg, quantity: 4))
        order3.addSelectedProduct(SelectedProduct(product: cheesyAngus, quantity: 3))
        order3.addSelectedProduct(SelectedProduct(product: frenchFries, quantity: 2))
        order3.addSelectedProduct(SelectedProduct(product: cokaCoka, quantity: 1))
        order3.addSelectedProduct(SelectedProduct(product: cokeZero, quantity: 1))
        
        //Define Forth Order
        let order4 = Order(4)
        allOrders.append(order4)
        order4.addSelectedProduct(SelectedProduct(product: frenchFries, quantity: 2))
        order4.addSelectedProduct(SelectedProduct(product: spicyChicken, quantity: 3))
        order4.addSelectedProduct(SelectedProduct(product: doubleCheese, quantity: 1))
        order4.addSelectedProduct(SelectedProduct(product: cokaCoka, quantity: 1))
        order4.addSelectedProduct(SelectedProduct(product: cokeZero, quantity: 1))
        
        //Define Fifth Order
        let order5 = Order(5)
        allOrders.append(order5)
        order5.addSelectedProduct(SelectedProduct(product: cokaCoka, quantity: 1))
        order5.addSelectedProduct(SelectedProduct(product: frenchFries, quantity: 3))
        order5.addSelectedProduct(SelectedProduct(product: doubleCheese, quantity: 5))
        order5.addSelectedProduct(SelectedProduct(product: cokaCoka, quantity: 1))
        order5.addSelectedProduct(SelectedProduct(product: spicyChicken, quantity: 2))
    }
}
