//
//  main.swift
//  0706012110002-MichelleSwastika-AFL 1
//
//  Created by Lyra Rivera on 28/02/23.
//

import Foundation

var cafe: [String:[String:Int]] = ["Tuku-tuku": [:], "Gotri" : [:], "Madam Lie" : [:], "Kopte" : [:]]
cafe["Tuku-tuku"]  = ["Tahu isi" : 5000, "Nasi kuning" : 20_000, "Nasi campur" : 20_000, "Air mineral" : 3500]
cafe["Gotri"] = ["Nasi bakar" : 25_000, "Nasi babat" : 20_000, "Mini wonton" : 7000, "Mawut chicken" : 25000]
cafe["Madam Lie"] = ["Otak-otak" : 10_000, "Semprong" : 10_000, "Nastar" : 15000, "Kwanchiang" : 18000]
cafe["Kopte"] = ["Kopte toast" : 20_000, "Coklat tarik kopte" : 14000, "Milo dinosaur" : 10_000, "Cincau doger" : 18000]
var shoppingcart: [String:Int] = [:]

var input: String = ""
while input != "q" || input != "Q" {
    print("""
==== Welcome to UC-Walk Cafeteria ====
Please choose a cafeteria:
--------------------------------------
[1] Tuku-Tuku
[2] Gotri
[3] Madam Lie
[4] Kopte
-
[S]hopping Cart
[Q]uit
--------------------------------------
Your choice?
""")
    input = readLine()!
    
    if input == "1" {
        var menu : String = ""
        while menu != "b" || menu != "B" {
            print("""
\nHi, Welcome to Tuku-Tuku!
What would you like to order?
--------------------------------------
[1] Tahu isi
[2] Nasi kuning
[3] Nasi campur
[4] Air mineral
-
[B]ack to main menu
Your choice?
""")
            menu = readLine()!
            
            if menu == "1" {
                var inp : String = ""
                print("""
\(cafe["Tuku-tuku"]) @ 5.000
How many tahu isi do you want to buy?
""")
                inp = readLine()!
                var total : Int = 0
                total = Int(inp)!
                
                var grandtotal : Int = 0
                grandtotal = cafe["Tuku-tuku"]?["Tahu isi"] as! Int*total
                print("Total : \(grandtotal)")
                print("Thank you for ordering.")
            }
            else if menu == "2" {
                var inp : String = ""
                print("""
Nasi kuning @ 20.000
How many nasi kuning do you want to buy?
""")
                inp = readLine()!
                var total : Int = 0
                total = Int(inp)!
                
                var grandtotal : Int = 0
                grandtotal = 20_000*total
                print("Total : \(grandtotal)")
                print("Thank you for ordering.")
            }
            else if menu == "3" {
                var inp : String = ""
                print("""
Nasi campur @ 20.000
How many nasi campur do you want to buy?
""")
                inp = readLine()!
                var total : Int = 0
                total = Int(inp)!
                
                var grandtotal : Int = 0
                grandtotal = 20_000*total
                print("Total : \(grandtotal)")
                print("Thank you for ordering.")
            }
            else if menu == "4" {
                var inp : String = ""
                print("""
Air mineral @ 3.500
How many air mineral do you want to buy?
""")
                inp = readLine()!
                var total : Int = 0
                total = Int(inp)!
                
                var grandtotal : Int = 0
                grandtotal = 3_500*total
                print("Total : \(grandtotal)")
                print("Thank you for ordering.")
            }
            else if menu == "b" || menu == "B" {
                print("Thank you for visiting. See you soon.\n")
                break
            }
            else {
                print("Your choice does not exist. Please try again.")
            }
        }
    }
    else if input == "2" {
        var menu : String = ""
        print("""
\nHi, Welcome to Gotri!
What would you like to order?
--------------------------------------
[1] Nasi bakar
[2] Nasi babat
[3] Mini wonton
[4] Mawut chicken
-
[B]ack to main menu
Your choice?
""")
        menu = readLine()!
        if menu == "1" {
            var inp : String = ""
            print("""
Nasi bakar @ 25.000
How many nasi bakar do you want to buy?
""")
            inp = readLine()!
            var total : Int = 0
            total = Int(inp)!
            
            var grandtotal : Int = 0
            grandtotal = 25_000*total
            print("Total : \(grandtotal)")
            print("Thank you for ordering.")
        }
        else if menu == "2" {
            var inp : String = ""
            print("""
Nasi babat @ 20.000
How many nasi babat do you want to buy?
""")
            inp = readLine()!
            var total : Int = 0
            total = Int(inp)!
            
            var grandtotal : Int = 0
            grandtotal = 20_000*total
            print("Total : \(grandtotal)")
            print("Thank you for ordering.")
        }
        else if menu == "3" {
            var inp : String = ""
            print("""
Mini wonton @ 7.000
How many mini wonton do you want to buy?
""")
            inp = readLine()!
            var total : Int = 0
            total = Int(inp)!
            
            var grandtotal : Int = 0
            grandtotal = 7_000*total
            print("Total : \(grandtotal)")
            print("Thank you for ordering.")
        }
        else if menu == "4" {
            var inp : String = ""
            print("""
Mawut Chicken @ 25.000
How many mawut chicken do you want to buy?
""")
            inp = readLine()!
            var total : Int = 0
            total = Int(inp)!
            
            var grandtotal : Int = 0
            grandtotal = 25_000*total
            print("Total : \(grandtotal)")
            print("Thank you for ordering.")
        }
        else if menu == "b" || menu == "B" {
            print("Thank you for visiting. See you soon.\n")
            break
        }
        else {
            print("Your choice does not exist. Please try again.")
        }
    }
    else if input == "3" {
        var menu : String = ""
        print("""
\nHi, Welcome to Madam Lie!
What would you like to order?
--------------------------------------
[1] Otak-otak
[2] Semprong
[3] Nastar
[4] Kwanchiang
-
[B]ack to main menu
Your choice?
""")
        menu = readLine()!
        
        if menu == "1" {
            var inp : String = ""
            print("""
Otak-otak @ 10.000
How many otak-otak do you want to buy?
""")
            inp = readLine()!
            var total : Int = 0
            total = Int(inp)!
            
            var grandtotal : Int = 0
            grandtotal = 10_000*total
            print("Total : \(grandtotal)")
            print("Thank you for ordering.")
        }
        else if menu == "2" {
            var inp : String = ""
            print("""
Semprong @ 10.000
How many semprong do you want to buy?
""")
            inp = readLine()!
            var total : Int = 0
            total = Int(inp)!
            
            var grandtotal : Int = 0
            grandtotal = 10_000*total
            print("Total : \(grandtotal)")
            print("Thank you for ordering.")
        }
        else if menu == "3" {
            var inp : String = ""
            print("""
Nastar @ 15.000
How many nastar do you want to buy?
""")
            inp = readLine()!
            var total : Int = 0
            total = Int(inp)!
            
            var grandtotal : Int = 0
            grandtotal = 15_000*total
            print("Total : \(grandtotal)")
            print("Thank you for ordering.")
        }
        else if menu == "4" {
            var inp : String = ""
            print("""
Kwanchiang @ 18.000
How many kwanchiang do you want to buy?
""")
            inp = readLine()!
            var total : Int = 0
            total = Int(inp)!
            
            var grandtotal : Int = 0
            grandtotal = 18_000*total
            print("Total : \(grandtotal)")
            print("Thank you for ordering.")
        }
        else if menu == "b" || menu == "B" {
            print("Thank you for visiting. See you soon.\n")
            break
        }
        else {
            print("Your choice does not exist. Please try again.")
        }
    }
    else if input == "4" {
        var menu : String = ""
        print("""
\nHi, Welcome to Kopte!
What would you like to order?
--------------------------------------
[1] Kopte Toast
[2] Coklat Tarik Kopte
[3] Milo Dinosaur
[4] Cincau Doger
-
[B]ack to main menu
Your choice?
""")
        menu = readLine()!
        if menu == "1" {
            var inp : String = ""
            print("""
Kopte toast @ 20.000
How many kopte toast do you want to buy?
""")
            inp = readLine()!
            var total : Int = 0
            total = Int(inp)!
            
            var grandtotal : Int = 0
            grandtotal = 20_000*total
            print("Total : \(grandtotal)")
            print("Thank you for ordering.")
        }
        else if menu == "2" {
            var inp : String = ""
            print("""
Coklat tarik kopte @ 14.000
How many coklat tarik kopte do you want to buy?
""")
            inp = readLine()!
            var total : Int = 0
            total = Int(inp)!
            
            var grandtotal : Int = 0
            grandtotal = 14_000*total
            print("Total : \(grandtotal)")
            print("Thank you for ordering.")
        }
        else if menu == "3" {
            var inp : String = ""
            print("""
Milo dinosaur @ 10.000
How many milo dinosaur do you want to buy?
""")
            inp = readLine()!
            var total : Int = 0
            total = Int(inp)!
            
            var grandtotal : Int = 0
            grandtotal = 10_000*total
            print("Total : \(grandtotal)")
            print("Thank you for ordering.")
        }
        else if menu == "4" {
            var inp : String = ""
            print("""
Cincau doger @ 18.000
How many cincau doger do you want to buy?
""")
            inp = readLine()!
            var total : Int = 0
            total = Int(inp)!
            
            var grandtotal : Int = 0
            grandtotal = 18_000*total
            print("Total : \(grandtotal)")
            print("Thank you for ordering.")
        }
        else if menu == "b" || menu == "B" {
            print("Thank you for visiting. See you soon.\n")
            break
        }
        else {
            print("Your choice does not exist. Please try again.")
        }
    }
    else if input == "s" || input == "S" {
        if shoppingcart.isEmpty == true {
            print("""
              \n============ Shopping Cart ============
              Your cart is empty.\n
              """)
        }
        else {
            print("""
\n============ Shopping Cart ============

""")
        }
    }
    else if input == "q" || input == "Q" {
        print("Thank you for visiting!")
        exit(0)
    }
    else {
        print("Sorry, your choice does not exist. Please try again.\n")
    }
}
