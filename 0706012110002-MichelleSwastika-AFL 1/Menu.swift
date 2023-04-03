//
//  Menu.swift
//  0706012110002-MichelleSwastika-AFL 1
//
//  Created by Lyra Rivera on 24/03/23.
//

import Foundation

class Menu{
    var menuID: Int
    var menuName: String
    var price: Int
    
    init(id: Int, name:String, price:Int){
        self.menuID = id
        self.menuName = name
        self.price = price
    }
    init(_ id: Int,_ name:String,_ price:Int){
        self.menuID = id
        self.menuName = name
        self.price = price
    }
    
    func getName(){
        return(self.menuName)
    }
    
    func order(shopId:Shop, menuID:Menu){
        var amount:Int?
        
            print("""
        \n\(menuName) @ \(price)
        How many \(menuName) do you want to buy?
        """, terminator: " ")
            
            guard let inp = readLine()?.lowercased() else {
                print("\nPlease enter your choice.")
                return order()
            }
            
        if let amount = Int(inp) {
            addToCart(shop: Shop, product: Menu, addAmount: amount)
            
            print()
            shoppingInShop(shop: Shop)
        }
        else {
            print("\nPlease enter a valid amount.")
            order(product: Menu, shop: Shop)
        }
    }
    
    func showAllShop(){
        print("""
    \n==== Welcome to UC-Walk Cafeteria ====
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
            print("\nPlease enter your choice.")
            return startShopping()
        }
        
        if let shopFound = Shops.first(where: { $0.ID == Int(input) }) {
            
            shoppingInShop(shop: shopFound)
            
        } else {
            
            if(input == "s") {
                shoppingCart()
            }
            else if(input == "q") {
                exit(0)
            } else {
                print("\nInvalid input. Please try again.")
                startShopping()
            }
            
        }
    }
    
}
class Equipment {
    var name: String
    var tier: Int
    
    // Initializer 1
    init(name:String, tier:Int){
        self.name = name
        self.tier = tier
    }
    
    //Initializer 2
    init(_ name:String, tier:Int){
        self.name = name
        self.tier = tier
    }
    
    //Initializer 3
        init(_ name:String){
            self.name = name
            self.tier = 1
        }
    
    //Initializer 4
    init(tier:Int){
                name = ""
                self.tier = tier
            }
    
    func equip(by heroName:String){
        if name.isEmpty{
            print("\(heroName) can't equip unknown item")
        }
        else{
            print("\(heroName) equipped \(name)")
        }
    }
}

//let shoes = Equipment(name:"Demon Shoes", tier:2)

let shoes = Equipment("Demon Sword", tier:2)
print(shoes.name, shoes.tier)

let book = Equipment("Mystery Codex")
print(book.name, book.tier)

shoes.equip(by: "Nana")
book.equip(by: "Nana")

let entah = Equipment(tier:2)
entah.equip(by:"Tigreal")
