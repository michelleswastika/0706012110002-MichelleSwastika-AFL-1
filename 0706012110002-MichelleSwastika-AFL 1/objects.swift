//
//  objects.swift
//  0706012110002-MichelleSwastika-AFL 1
//
//  Created by Michelle Swastika on 03/04/23.
//

import Foundation

class Item {
    var id: Int
    var name: String
    
    init(_ id: Int, _ name: String) {
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
        let product = Product(id, name, price, self)
        products.append((id, name, price))
        return product
    }
}

class Product : Item{
    var price: Int
    weak var shop: Shop?
        
    init(_ id: Int, _ name: String, _ price: Int, _ shop: Shop) {
        self.price = price
        self.shop = shop
        super.init(id, name)
    }
}

class ShoppingCart{
    var cart: [String:[String: (price: Int, amount: Int)]] = [:]
        
    func addToCart(shop: Shop, product: Product, addAmount: Int) {
        // Check whether the shop array exists, if it doesn't exist create an empty array for that shop
        if cart[shop.name] == nil {
            cart[shop.name] = [:]
        }

        // If the array exist but it has nothing inside, set the default value to 0
        if cart[shop.name]![product.name] == nil {
            cart[shop.name]![product.name] = (
                price: product.price,
                amount: 0
            )
        }

        // Add a product to the shopping cart and update the amount
        cart[shop.name]![product.name]! = (
            price: product.price,
            amount: cart[shop.name]![product.name]!.amount + addAmount
        )
    }
    
    func showShoppingCart() -> Void {
        if cart.isEmpty {
            print("\nYour cart is empty.\n")

//            startShopping()
        }
        else {

            var totalPay = 0

            cart.forEach({ shopName, cartInTheShop in
                print("\nYour order from \(shopName):")

                cartInTheShop.forEach({ productName, data in
                    print("- \(productName) (x\(data.amount)) = \(data.price * data.amount)")
                    totalPay += data.price * data.amount
                })

            })
            print("""
    \nPress [B] to go back
    Press [P] to pay / checkout
    Your choice?
    """, terminator: " ")

            guard let inputShoppingCart = readLine()?.lowercased() else {
                print("\nPlease enter your choice.")
                return showShoppingCart()
            }

            if inputShoppingCart == "b" {
//                startShopping()
            }
            else if inputShoppingCart == "p" {
//                checkOut(totalpay: totalPay)
            }
            else {
                print("\nInvalid input. Please try again.")
                showShoppingCart()
            }
        }
    }
}
