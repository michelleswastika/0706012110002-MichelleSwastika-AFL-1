//
//  play.swift
//  0706012110002-MichelleSwastika-AFL 1
//
//  Created by Lyra Rivera on 03/04/23.
//

import Foundation
class Item {
    var id: Int
    var name: String
    
    init(id: Int, name: String) {
        self.id = id
        self.name = name
    }
}

class Shop : Item, Hashable{
    var products: [(id: Int, name: String, price: Double)] = []
        
    static func == (lhs: Shop, rhs: Shop) -> Bool {
        return lhs.name == rhs.name
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(name)
    }
        
    // Add a product to the shop
    func addProduct(id: Int, name: String, price: Double) -> Product {
        let product = Product(id: id, name: name, price: price, shop: self)
        products.append((id, name, price))
        return product
    }
}

class Product : Item{
    var price: Double
    weak var shop: Shop?
        
    init(id: Int, name: String, price: Double, shop: Shop) {
        self.price = price
        self.shop = shop
        super.init(id: id, name: name)
    }
}

class ShoppingCart{
    var products: [Product] = []
    var amount: Double = 0
        
    // Add a product to the shopping cart and update the amount
    func addProduct(_ product: Product) {
        products.append(product)
        amount += product.price
    }
        
    // Group the products by shop and return a dictionary
    func groupProductsByShop() -> [Shop: [Product]] {
    var groups: [Shop: [Product]] = [:]
    for product in products {
        if let shop = product.shop {
            if var productsInGroup = groups[shop] {
                productsInGroup.append(product)
                groups[shop] = productsInGroup
            } else {
                groups[shop] = [product]
            }
        }
    }
        return groups
    }
}
