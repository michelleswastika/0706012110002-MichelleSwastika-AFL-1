//
//  main.swift
//  0706012110002-MichelleSwastika-AFL 1
//

import Foundation

//var cafe: [String:[String:Int]] = ["Tuku-tuku": [:], "Gotri" : [:], "Madam Lie" : [:], "Kopte" : [:]]
//cafe["Tuku-tuku"]  = ["Tahu isi" : 5000, "Nasi kuning" : 20_000, "Nasi campur" : 20_000, "Air mineral" : 3500]
//cafe["Gotri"] = ["Nasi bakar" : 25_000, "Nasi babat" : 20_000, "Mini wonton" : 7000, "Mawut chicken" : 25000]
//cafe["Madam Lie"] = ["Otak-otak" : 10_000, "Semprong" : 10_000, "Nastar" : 15000, "Kwanchiang" : 18000]
//cafe["Kopte"] = ["Kopte toast" : 20_000, "Coklat tarik kopte" : 14000, "Milo dinosaur" : 10_000, "Cincau doger" : 18000]

typealias Product = (ID: Int, name: String, price: Int)
typealias Shop = (ID:Int, name: String, products: [Product])

let Shops: [Shop] = [
    (ID:1, name: "Tuku-tuku", products: [
        (ID: 1, name: "Tahu isi", price: 5000),
        (ID: 2, name: "Nasi kuning", price: 20000),
        (ID: 3, name: "Nasi campur", price: 20000),
        (ID: 4, name: "Air mineral", price: 3500)
    ]),
    (ID:2, name: "Gotri", products: [
        (ID: 1, name: "Nasi bakar", price: 25000),
        (ID: 2, name: "Nasi babat", price: 20000),
        (ID: 3, name: "Mini wonton", price: 7000),
        (ID: 4, name: "Mawut chicken", price: 25000)
    ]),
    (ID:3, name: "Madam Lie", products: [
        (ID: 1, name: "Otak-otak", price: 10000),
        (ID: 2, name: "Semprong", price: 10000),
        (ID: 3, name: "Nastar", price: 15000),
        (ID: 4, name: "Kwanchiang", price: 18000)
    ]),
    (ID:4, name: "Kopte", products: [
        (ID: 1, name: "Kopte toast", price: 20000),
        (ID: 2, name: "Coklat tarik kopte", price: 14000),
        (ID: 3, name: "Milo dinosaur", price: 10000),
        (ID: 4, name: "Cincau doger", price: 10000)
    ])
]

var shoppingcart: [String:Int] = [:]

startShopping()
