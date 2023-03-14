//
//  Shopping.swift
//  0706012110002-MichelleSwastika-AFL 1
//

import Foundation

func startShopping() -> Void {
    print("""
==== Welcome to UC-Walk Cafeteria ====
Please choose a cafeteria:
--------------------------------------
""")
    
    Shops.forEach({ shop in
        print("[\(shop.ID)] \(shop.name)")
    })
    
    print("""
        -
        [S]hopping Cart
        [Q]uit
        --------------------------------------
        Your choice?
        """, terminator: " ")
    
    guard let input = readLine()?.lowercased() else {
        print("Please enter your choice!!!!!")
        return startShopping()
    }
    
    //    Shops.forEach({ shop in
    //        if shop.ID == Int(input) {
    //            shoppingInShop(shop: shop)
    //            return
    //        }
    //    })
    //
    
    if let shopFound = Shops.first(where: { $0.ID == Int(input) }) {
        
        shoppingInShop(shop: shopFound)
        
    } else {
        
        if(input == "s") {
            shoppingCart()
        }
        else if(input == "q") {
            exit(0)
        } else {
            print("Input invalid!")
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
        print("[\(product.ID)] \(product.name) - Harga : \(product.price)")
    })
    
    print("""
    -
    [B]ack to main menu
    Your choice?
    """, terminator: " ")
    
    guard let input = readLine()?.lowercased() else {
        print("Please enter your choice.")
        return startShopping()
    }
    
    if let productSelected = shop.products.first(where: { $0.ID == Int(input) }) {
        
        // masuk ke keranjang kuning
        order(product: productSelected, shop: shop)
        
    } else {
        
        if(input == "b") {
            startShopping()
        } else {
            print("Input invalid!")
            shoppingInShop(shop: shop)
        }
        
    }
}

func order(product: Product, shop: Shop) -> Void {
    print("""
    \(product.name) @ \(product.price)
    How many \(product.name) do you want to buy?
    """, terminator: " ")
    
    guard let inp = readLine()?.lowercased() else {
        print("Please enter your choice.")
        return order(product: product, shop: shop)
    }
    
    if shoppingcart["\(shop.ID).\(product.ID)"] == nil {
        shoppingcart["\(shop.ID).\(product.ID)"] = 0
    }
    else {
        shoppingcart["\(shop.ID).\(product.ID)"] = Int(inp)
    }
    
    print(Int(inp)! * product.price)
    
    shoppingCart()
}

func shoppingCart() -> Void {
    shoppingcart.forEach({ (id, amount) in
        let ids = id.split(separator: ".")
        let shopSelect = Shops.first(where: { $0.ID == Int(ids[0])!})!
        let productSelect = shopSelect.products.first(where: { $0.ID == Int(ids[1])!})!
        
        if shopSelect.name == "Tuku-Tuku" {
            print("\nYour orders from Tuku-Tuku : ")
            print("Product: \(productSelect.name)")
            print("Harga: \(productSelect.price)")
            print("Jumlah: \(amount)")
            print("Total Harga: \(productSelect.price * amount)")
        }
        if shopSelect.name == "Gotri" {
            print("\nYour orders from Gotri : ")
            print("Product: \(productSelect.name)")
            print("Harga: \(productSelect.price)")
            print("Jumlah: \(amount)")
            print("Total Harga: \(productSelect.price * amount)")
        }
        if shopSelect.name == "Madam Lie" {
            print("\nYour orders from Madam Lie : ")
            print("Product: \(productSelect.name)")
            print("Harga: \(productSelect.price)")
            print("Jumlah: \(amount)")
            print("Total Harga: \(productSelect.price * amount)")
        }
        if shopSelect.name == "Kopte" {
            print("\nYour orders from Kopte : ")
            print("Product: \(productSelect.name)")
            print("Harga: \(productSelect.price)")
            print("Jumlah: \(amount)")
            print("Total Harga: \(productSelect.price * amount)")
        }
    }
)}
