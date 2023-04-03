//
//  Shopping.swift
//  0706012110002-MichelleSwastika-AFL 1
//

import Foundation

//func startShopping() -> Void {
//    print("""
//\n==== Welcome to UC-Walk Cafeteria ====
//Please choose a cafeteria:
//--------------------------------------
//""")
//
//    Shops.forEach({ shop in
//        print("[\(shop.ID)] \(shop.name)")
//    })
//
//    print("""
//        -
//        [S]hopping Cart
//        [Q]uit
//        --------------------------------------
//        Your choice?
//        """, terminator: " ")
//
//    guard let input = readLine()?.lowercased() else {
//        print("\nPlease enter your choice.")
//        return startShopping()
//    }
//
//    if let shopFound = Shops.first(where: { $0.ID == Int(input) }) {
//
//        shoppingInShop(shop: shopFound)
//
//    } else {
//
//        if(input == "s") {
//            shoppingCart()
//        }
//        else if(input == "q") {
//            exit(0)
//        } else {
//            print("\nInvalid input. Please try again.")
//            startShopping()
//        }
//
//    }
//
//
//}
//
//func shoppingInShop(shop: Shop) -> Void {
//    print("""
//    \nHi, Welcome to \(shop.name)!
//    What would you like to order?
//    --------------------------------------
//    """)
//    shop.products.forEach({ product in
//        print("[\(product.ID)] \(product.name) - Harga : \(product.price)")
//    })
//
//    print("""
//    -
//    [B]ack to main menu
//    Your choice?
//    """, terminator: " ")
//
//    guard let input = readLine()?.lowercased() else {
//        print("\nPlease enter your choice.")
//        return startShopping()
//    }
//
//    if let productSelected = shop.products.first(where: { $0.ID == Int(input) }) {
//
//        // masuk ke shopping cart
//        order(product: productSelected, shop: shop)
//
//    } else {
//
//        if(input == "b") {
//            startShopping()
//        } else {
//            print("\nInvalid input. Please try again.")
//            shoppingInShop(shop: shop)
//        }
//
//    }
//}
//
//func order(product: Product, shop: Shop) -> Void {
//    var amount:Int?
//
//        print("""
//    \n\(product.name) @ \(product.price)
//    How many \(product.name) do you want to buy?
//    """, terminator: " ")
//
//        guard let inp = readLine()?.lowercased() else {
//            print("\nPlease enter your choice.")
//            return order(product: product, shop: shop)
//        }
//
//    if let amount = Int(inp) {
//        addToCart(shop: shop, product: product, addAmount: amount)
//
//        print()
//        shoppingInShop(shop: shop)
//    }
//    else {
//        print("\nPlease enter a valid amount.")
//        order(product: product, shop: shop)
//    }
//}
//
//func addToCart(shop: Shop, product: Product, addAmount: Int) {
//
//    // kalau tokonya g ada bikin dulu array kosong u/ toko itu
//    if shoppingcart[shop.name] == nil {
//        shoppingcart[shop.name] = [:]
//    }
//
//    // kalau toko sudah ada dan produk tidak ada, buat dengan default value 0
//    if shoppingcart[shop.name]![product.name] == nil {
//        shoppingcart[shop.name]![product.name] = (
//            price: product.price,
//            amount: 0
//        )
//    }
//
//    // tambahkan amount nya
//    shoppingcart[shop.name]![product.name]! = (
//        price: product.price,
//        amount: shoppingcart[shop.name]![product.name]!.amount + addAmount
//    )
//}
//
//func shoppingCart() -> Void {
//    if shoppingcart.isEmpty {
//        print("\nYour cart is empty.\n")
//
//        startShopping()
//    }
//    else {
//
//        var totalPay = 0
//
//        shoppingcart.forEach({ shopName, cartInTheShop in
//            print("\nYour order from \(shopName):")
//
//            cartInTheShop.forEach({ productName, data in
//                print("- \(productName) (x\(data.amount)) = \(data.price * data.amount)")
//                totalPay += data.price * data.amount
//            })
//
//        })
//
//        print("""
//\nPress [B] to go back
//Press [P] to pay / checkout
//Your choice?
//""", terminator: " ")
//
//        guard let inputShoppingCart = readLine()?.lowercased() else {
//            print("\nPlease enter your choice.")
//            return shoppingCart()
//        }
//
//        if inputShoppingCart == "b" {
//            startShopping()
//        }
//        else if inputShoppingCart == "p" {
//            checkOut(totalpay: totalPay)
//        }
//        else {
//            print("\nInvalid input. Please try again.")
//            shoppingCart()
//        }
//    }
//}
//
//func checkOut(totalpay : Int) -> Void {
//    var payment : Int?
//    while payment == nil{
//        print("\nYour total order amount : \(totalpay)")
//        print("Enter the amount of your money : ", terminator: " ")
//
//        guard let money = readLine()?.lowercased() else {
//            print("\nPlease enter your payment.")
//            return checkOut(totalpay:totalpay)
//        }
//
//        if let payment = Int(money) {
//            if payment >= totalpay {
//                print("Your total order : \(totalpay)")
//                print("You pay : \(money) Change : \(Int(money)!-totalpay)")
//
//                while (true) {
//                print("\nEnjoy your meals!")
//                print("Press [return] to go back to main screen.", terminator: " ")
//                let pilih = readLine()
//                    if pilih == "" {
//                        shoppingcart = [:]
//                        print()
//                        break
//                    }
//                }
//                startShopping()
//            }
//            else if payment < totalpay {
//                print("\nThe amount your entered is insufficient. Please try again.")
//                checkOut(totalpay: totalpay)
//            }
//            else if payment < 0 {
//                print("\nPlease enter a valid amount.")
//                checkOut(totalpay: totalpay)
//            }
//        } else {
//            print("\nPlease enter a valid amount.")
//            checkOut(totalpay: totalpay)
//        }
//    }
//}
