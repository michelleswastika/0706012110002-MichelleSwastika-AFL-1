////
////  run.swift
////  0706012110002-MichelleSwastika-AFL 1
////
////  Created by Lyra Rivera on 31/03/23.
////
//
//import Foundation
//
//class Product {
//    var ID: Int
//    var name: String
//    var price: Int
//
//    init(ID: Int, name: String, price: Int) {
//        self.ID = ID
//        self.name = name
//        self.price = price
//    }
//}
//
//class Shop {
//    var ID: Int
//    var name: String
//    var products: [Product]
//
//    init(ID: Int, name: String, products: [Product]) {
//        self.ID = ID
//        self.name = name
//        self.products = products
//    }
//
//    func displayProducts() {
//        print("\nHi, Welcome to \(name)!")
//        print("What would you like to order?")
//        print("--------------------------------------")
//        products.forEach({ product in
//            print("[\(product.ID)] \(product.name) - Harga : \(product.price)")
//        })
//    }
//}
//
//class ShoppingCart {
//    var items: [String:[String: (price: Int, amount: Int)]]
//
//    init() {
//        items = [:]
//    }
//
//    func addToCart(shop: Shop, product: Product, addAmount: Int) {
//        if items[shop.name] == nil {
//            items[shop.name] = [:]
//        }
//
//        let currentAmount = items[shop.name]![product.name]?.amount ?? 0
//        let currentPrice = items[shop.name]![product.name]?.price ?? 0
//
//        items[shop.name]![product.name] = (
//            price: currentPrice + product.price,
//            amount: currentAmount + addAmount
//        )
//
//        print("\n\(addAmount) \(product.name) added to shopping cart.")
//    }
//
//    func displayCart() {
//        if items.isEmpty {
//            print("\nShopping cart is empty.")
//            return
//        }
//
//        print("\nShopping Cart:")
//        print("--------------------------------------")
//
//        for (shopName, products) in items {
//            print("\(shopName):")
//
//            for (productName, productData) in products {
//                print("- \(productName) x\(productData.amount) @ \(productData.price)")
//            }
//
//            print("--------------------------------------")
//        }
//    }
//}
//
//class UCWalkCafeteria {
//    var shops: [Shop]
//    var shoppingCart: ShoppingCart
//
//    init() {
//        shops = [
//            Shop(
//                ID: 1,
//                name: "Tuku-tuku",
//                products: [
//                    Product(ID: 1, name: "Tahu isi", price: 5000),
//                    Product(ID: 2, name: "Nasi kuning", price: 20000),
//                    Product(ID: 3, name: "Nasi campur", price: 20000),
//                    Product(ID: 4, name: "Air mineral", price: 3500)
//                ]
//            ),
//            Shop(
//                ID: 2,
//                name: "Gotri",
//                products: [
//                    Product(ID: 1, name: "Nasi bakar", price: 25000),
//                    Product(ID: 2, name: "Nasi babat", price: 20000),
//                    Product(ID: 3, name: "Mini wonton", price: 7000),
//                    Product(ID: 4, name: "Mawut chicken", price: 25000)
//                ]
//            ),
//            Shop(
//                ID: 3,
//                name: "Madam Lie",
//                products: [
//                    Product(ID: 1, name: "Otak-otak", price: 10000),
//                    Product(ID: 2, name: "Semprong", price: 10000),
//                    Product(ID: 3, name: "Nastar", price: 15000),
//                    Product(ID: 4, name: "Kwanchiang", price: 18000)
//                ]
//            ),
//            Shop(ID: 4, name: "Kopte", products: [
//                Product(ID: 1, name: "Kopte toast", price: 20000),
//                Product(ID: 2, name: "Coklat tarik kopte", price: 14000),
//                Product(ID: 3, name: "Milo dinosaur", price: 10000),
//                Product(ID: 4, name: "Cincau doger", price: 10000)
//            ]
//                )]
//    }
//}
