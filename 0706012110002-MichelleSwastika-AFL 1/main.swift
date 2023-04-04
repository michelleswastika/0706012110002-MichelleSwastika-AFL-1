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

// Create shops
let tukutuku = Shop(1, "Tuku-Tuku")
let gotri = Shop(3, "Gotri")
let madamlie = Shop(3, "Madam Lie")
let kopte = Shop(4, "Kopte")

// Create products
var tahuisi = Product(1, "Tahu isi", 5000, tukutuku)
var nasikuning = Product(2, "Nasi kuning", 20_000, tukutuku)
var nasicampur = Product(3, "Nasi campur", 20_000, tukutuku)
var airmineral = Product(4, "Air mineral", 3500, tukutuku)

var nasibakar = Product(1, "Nasi bakar", 25000, gotri)
var nasibabat = Product(2, "Nasi babat", 20_000, gotri)
var miniwonton = Product(3, "Mini wonton", 7000, gotri)
var nasimawut = Product(4, "Nasi mawut", 25000, gotri)

var otakotak = Product(1, "Otak-otak", 10_000, madamlie)
var semprong = Product(2, "Semprong", 10_000, madamlie)
var nastar = Product(3, "Nastar", 15000, madamlie)
var kwanchiang = Product(4, "Kwanchiang", 18000, madamlie)

var koptetoast = Product(1, "Kopte toast", 20_000, kopte)
var coklattarik = Product(2, "Coklat tarik kopte", 14000, kopte)
var milodinosaur = Product(3, "Milo dinosaur", 10_000, kopte)
var cincaudoger = Product(4, "Cincau doger", 10_000, kopte)

// Add some products to each shop
tukutuku.addProduct(tahuisi)
tukutuku.addProduct(nasikuning)
tukutuku.addProduct(nasicampur)
tukutuku.addProduct(airmineral)

gotri.addProduct(nasibakar)
gotri.addProduct(nasibabat)
gotri.addProduct(miniwonton)
gotri.addProduct(nasimawut)

madamlie.addProduct(otakotak)
madamlie.addProduct(semprong)
madamlie.addProduct(nastar)
madamlie.addProduct(kwanchiang)

kopte.addProduct(koptetoast)
kopte.addProduct(coklattarik)
kopte.addProduct(milodinosaur)
kopte.addProduct(cincaudoger)

// Create the store array
let store = [tukutuku, gotri, madamlie, kopte]

var shopping: ShoppingCart
var run: Run
