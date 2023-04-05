//
//  objects.swift
//  0706012110002-MichelleSwastika-AFL 1
//
//  Created by Michelle Swastika on 03/04/23.
//

import Foundation

protocol SystemFlow{
    func startShopping()
    func shoppingInShop(shop: Shop)
    func order(_ product: Product, _ shop: Shop)
}

struct Run: SystemFlow {
    func startShopping(){
        print("""
    \n==== Welcome to UC-Walk Cafeteria ====
    Please choose a cafeteria:
    --------------------------------------
    """)

        store.forEach({ shop in
            print("[\(shop.id)] \(shop.name)")
        })

        print("""
            -
            [S]hopping Cart
            [Q]uit
            --------------------------------------
            Your choice?
            """, terminator: " ")

        guard let input = readLine()?.lowercased() else {
            print("\nPlease enter your choice.")
            return startShopping()
        }

        if let shopSelected = store.first(where: { $0.id == Int(input) }) {
            shoppingInShop(shop: shopSelected)
        }
        else {
            if(input == "s") {
                shopping.showShoppingCart()
            }
            else if(input == "q") {
                exit(0)
            }
            else {
                print("\nInvalid input. Please try again.")
                startShopping()
            }
        }
    }
    
    func shoppingInShop(shop: Shop) -> Void {
        print("""
        \nHi, Welcome to \(shop.name)!
        What would you like to order?
        --------------------------------------
        """)
        shop.products.forEach({ product in
            print("[\(product.id)] \(product.name) - Harga : \(product.price)")
        })

        print("""
        -
        [B]ack to main menu
        Your choice?
        """, terminator: " ")

        guard let input = readLine()?.lowercased() else {
            print("\nPlease enter your choice.")
            return startShopping()
        }
//        if let productSelected = shop.products.first(where: { $0.id == Int(input) }) {
//            // select product to order
//            order(productSelected, shop)
//        }
        
        if let (productId, productName, productPrice) = shop.products.first(where: { $0.id == Int(input) }) {
            // create a Product object from the tuple
            let productSelected = Product(productId, productName, productPrice, shop)
            // select product to order
            order(productSelected, shop)
        }
        else {
            if(input == "b") {
                startShopping()
            }
            else {
                print("\nInvalid input. Please try again.")
                shoppingInShop(shop: shop)
            }
        }
    }
    
    func order(_ product: Product, _ shop: Shop) -> Void {
        var amount:Int?
            print("""
        \n\(product.name) @ \(product.price)
        How many \(product.name) do you want to buy?
        """, terminator: " ")
            guard let inp = readLine()?.lowercased() else {
                print("\nPlease enter your choice.")
                return order(product, shop)
            }
        if let amount = Int(inp) {
            shopping.addToCart(shop: shop, product: product, addAmount: amount)
            print()
            shoppingInShop(shop: shop)
        }
        else {
            print("\nPlease enter a valid amount.")
            order(product, shop)
        }
    }
}

class Item {
    var id: Int
    var name: String
    
    init(_ id: Int, _ name: String) {
        self.id = id
        self.name = name
    }
}

class Shop : Item, Hashable{
    var products: [(id: Int, name: String, price: Int)] = []
        
    static func == (lhs: Shop, rhs: Shop) -> Bool {
        return lhs.name == rhs.name
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(name)
    }
        
    // Add a product to the shop
    func addProduct(_ product: Product) -> Product {
        products.append((product.id, product.name, product.price))
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
            
            run.startShopping()
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
                run.startShopping()
            }
            else if inputShoppingCart == "p" {
                checkOut(totalpay: totalPay)
            }
            else {
                print("\nInvalid input. Please try again.")
                showShoppingCart()
            }
        }
    }
    
    func checkOut(totalpay : Int) -> Void {
        var payment : Int?
        while payment == nil{
            print("\nYour total order amount : \(totalpay)")
            print("Enter the amount of your money : ", terminator: " ")

            guard let money = readLine()?.lowercased() else {
                print("\nPlease enter your payment.")
                return checkOut(totalpay:totalpay)
            }

            if let payment = Int(money) {
                if payment >= totalpay {
                    print("Your total order : \(totalpay)")
                    print("You pay : \(money) Change : \(Int(money)!-totalpay)")

                    while (true) {
                    print("\nEnjoy your meals!")
                    print("Press [return] to go back to main screen.", terminator: " ")
                    let pilih = readLine()
                        if pilih == "" {
                            cart = [:]
                            print()
                            break
                        }
                    }
                    run.startShopping()
                }
                else if payment < totalpay {
                    print("\nThe amount your entered is insufficient. Please try again.")
                    checkOut(totalpay: totalpay)
                }
                else if payment < 0 {
                    print("\nPlease enter a valid amount.")
                    checkOut(totalpay: totalpay)
                }
            } else {
                print("\nPlease enter a valid amount.")
                checkOut(totalpay: totalpay)
            }
        }
    }
}
