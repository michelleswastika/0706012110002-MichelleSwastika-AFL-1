//
//  main.swift
//  0706012110002-MichelleSwastika-AFL 1
//

import Foundation

//typealias Product = (ID: Int, name: String, price: Int)
//typealias Shop = (ID:Int, name: String, products: [Product])

//let Shops: [Shop] = [
//    (ID:1, name: "Tuku-tuku", products: [
//        (ID: 1, name: "Tahu isi", price: 5000),
//        (ID: 2, name: "Nasi kuning", price: 20000),
//        (ID: 3, name: "Nasi campur", price: 20000),
//        (ID: 4, name: "Air mineral", price: 3500)
//    ]),
//    (ID:2, name: "Gotri", products: [
//        (ID: 1, name: "Nasi bakar", price: 25000),
//        (ID: 2, name: "Nasi babat", price: 20000),
//        (ID: 3, name: "Mini wonton", price: 7000),
//        (ID: 4, name: "Mawut chicken", price: 25000)
//    ]),
//    (ID:3, name: "Madam Lie", products: [
//        (ID: 1, name: "Otak-otak", price: 10000),
//        (ID: 2, name: "Semprong", price: 10000),
//        (ID: 3, name: "Nastar", price: 15000),
//        (ID: 4, name: "Kwanchiang", price: 18000)
//    ]),
//    (ID:4, name: "Kopte", products: [
//        (ID: 1, name: "Kopte toast", price: 20000),
//        (ID: 2, name: "Coklat tarik kopte", price: 14000),
//        (ID: 3, name: "Milo dinosaur", price: 10000),
//        (ID: 4, name: "Cincau doger", price: 10000)
//    ])
//]

//var shoppingcart: [String:[String: (price: Int, amount: Int)]] = [:]

// Create some shops and products
let tukutuku = Shop(1, "Tuku-Tuku")
tukutuku.addProduct(id: 1, name: "Tahu isi", price: 5000)
tukutuku.addProduct(id: 2, name: "Nasi kuning", price: 20_000)
tukutuku.addProduct(id: 3, name: "Nasi campur", price: 20_000)
tukutuku.addProduct(id: 4, name: "Air mineral", price: 3500)

let gotri = Shop(2, "Gotri")
gotri.addProduct(id: 1, name: "Nasi bakar", price: 25000)
gotri.addProduct(id: 2, name: "Nasi babat", price: 20_000)
gotri.addProduct(id: 3, name: "Mini wonton", price: 7000)
gotri.addProduct(id: 4, name: "Nasi mawut", price: 25000)

let madamlie = Shop(3, "Madam Lie")
madamlie.addProduct(id: 1, name: "Otak-otak", price: 10_000)
madamlie.addProduct(id: 2, name: "Semprong", price: 10_000)
madamlie.addProduct(id: 3, name: "Nastar", price: 15000)
madamlie.addProduct(id: 4, name: "Kwanchiang", price: 18000)

let kopte = Shop(4, "Kopte")
kopte.addProduct(id: 1, name: "Kopte toast", price: 20_000)
kopte.addProduct(id: 2, name: "Coklat tarik kopte", price: 14_000)
kopte.addProduct(id: 3, name: "Milo dinosaur", price: 10_000)
kopte.addProduct(id: 4, name: "Cincau doger", price: 10_000)


// Create a shopping cart and add the products to it
let myCart = ShoppingCart()
myCart.addProduct(1, "Tahu isi", 5000, "Tuku-Tuku", 3)
myCart.addProduct(banana)
myCart.addProduct(orange)

// Group the products by shop and print the groups
let groups = myCart.groupProductsByShop()
for (shop, products) in groups {
    print("Products in \(shop.name):")
    for product in products {
        print("- \(product.name) (\(product.price))")
    }
    print("---")
}

//startShopping()
