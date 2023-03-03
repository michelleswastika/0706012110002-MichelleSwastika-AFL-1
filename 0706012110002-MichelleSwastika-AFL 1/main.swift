//
//  main.swift
//  0706012110002-MichelleSwastika-AFL 1
//
//  Created by Lyra Rivera on 28/02/23.
//

import Foundation

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
Tahu isi @ 5.000
How many tahu isi do you want to buy?
""")
                inp = readLine()!
                var total : Int = 0
                total = Int(inp)!
                
                var grandtotal : Int = 0
                grandtotal = 5000*total
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
        var menu : String = ""
        menu = readLine()!
        
        print("\nMenu : \(menu)")
    }
    else if input == "3" {
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
        var menu : String = ""
        menu = readLine()!
        
        print("\nMenu : \(menu)")
    }
    else if input == "4" {
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
        var menu : String = ""
        menu = readLine()!
        
        print("\nMenu : \(menu)")
    }
    else if input == "s" || input == "S" {
        print("""
          \n============ Shopping Cart ============
          Your cart is empty.\n
          """)
    }
    else if input == "q" || input == "Q" {
        print("Thank you for visiting!")
        exit(0)
    }
    else {
        print("Sorry, your choice does not exist. Please try again.\n")
    }
}
