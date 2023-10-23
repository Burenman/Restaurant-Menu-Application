//
//  MenuItem.swift
//  LittleLemonTestProject
//
//  Created by Viktor on 2023-10-22.
//

import Foundation

protocol MenuItemProtocol {
    var id: UUID { get }
    var price: Double { get }
    var title: String { get }
    var category: MenuCategory { get }
    var ordersCount: Int { get set }
    var ingredients: [Ingredient] { get set }
    var image: String {get set}
}

extension MenuItemProtocol where Self: Identifiable {
    var id: UUID {
        return UUID()
    }
}

struct MenuItem: Identifiable, Hashable, MenuItemProtocol {
    var title: String
    var ingredients: [Ingredient]
    var category: MenuCategory
    var price: Double
    var ordersCount: Int = 0
    var image: String
}



class MockData {
    static let shared = MockData()
    
    let foodItems: [MenuItem] = [
        MenuItem(title: "Spaghetti Bolognese", ingredients: [.pasta, .tomatoSauce, .beef], category: .food, price: 12.99, ordersCount: 100, image: "bolognese"),
        MenuItem(title: "Chicken Alfredo", ingredients: [.pasta, .creamSauce, .chicken], category: .food, price: 14.99, ordersCount: 84, image: "bolognese"),
        MenuItem(title: "Margherita Pizza", ingredients: [.tomatoSauce, .cheese], category: .food, price: 10.99, ordersCount: 103, image: "pizza"),
        MenuItem(title: "Caesar Salad", ingredients: [.lettuce, .croutons, .chicken], category: .food, price: 8.99, ordersCount: 140, image: "caesar"),
        MenuItem(title: "Grilled Salmon", ingredients: [.salmon], category: .food, price: 16.99, ordersCount: 100, image: "salmon"),
        MenuItem(title: "Beef Stir Fry", ingredients: [.beef, .vegetables], category: .food, price: 13.99, ordersCount: 102, image: "beef"),
        MenuItem(title: "Vegetable Curry", ingredients: [.vegetables, .currySauce], category: .food, price: 11.99, ordersCount: 49, image: "curry"),
        MenuItem(title: "Cheeseburger", ingredients: [.beef, .cheese, .lettuce, .tomatoes], category: .food, price: 9.99, ordersCount: 99, image: "burger"),
        MenuItem(title: "Pasta Primavera", ingredients: [.pasta, .vegetables, .tomatoSauce], category: .food, price: 10.99, ordersCount: 80, image: "pasta"),
        MenuItem(title: "Mushroom Risotto", ingredients: [.rice, .mushrooms, .creamSauce], category: .food, price: 12.99, ordersCount: 91, image: "mush"),
        MenuItem(title: "Shrimp Scampi", ingredients: [.pasta, .shrimp, .garlicButterSauce], category: .food, price: 15.99, ordersCount: 139, image: "shrimp"),
        MenuItem(title: "Vegetarian Pizza", ingredients: [.tomatoSauce, .cheese, .vegetables], category: .food, price: 11.99, ordersCount: 92, image: "vegpizza")
    ]

    let drinkItems: [MenuItem] = [
        MenuItem(title: "Orange Juice", ingredients: [.oranges], category: .drink, price: 2.99, ordersCount: 44, image: "orange"),
        MenuItem(title: "Iced Coffee", ingredients: [.coffee, .milk, .ice], category: .drink, price: 3.49, ordersCount: 55, image: "iced"),
        MenuItem(title: "Lemonade", ingredients: [.lemon, .sugar, .water], category: .drink, price: 2.79, ordersCount: 52, image: "lemon"),
        MenuItem(title: "Mango Smoothie", ingredients: [.mango, .yogurt, .ice], category: .drink, price: 4.99, ordersCount: 33, image: "mango"),
        MenuItem(title: "Soda", ingredients: [.carbonatedWater, .flavoring], category: .drink, price: 1.99, ordersCount: 44, image: "soda"),
        MenuItem(title: "Hot Tea", ingredients: [.teaBag, .hotWater], category: .drink, price: 1.49, ordersCount: 44, image: "tea"),
        MenuItem(title: "Caramel Latte", ingredients: [.coffeeBeans], category: .drink, price: 2.49, ordersCount: 100, image: "coffee"),
        MenuItem(title: "Milkshake", ingredients: [.iceCream, .milk, .whippedCream], category: .drink, price: 5.49, ordersCount: 88, image: "milk")
    ]

    let dessertItems: [MenuItem] = [
        MenuItem(title: "Chocolate Cake", ingredients: [.chocolate, .flour, .sugar], category: .dessert, price: 6.99, ordersCount: 32, image: "cake"),
        MenuItem(title: "Cheesecake", ingredients: [.creamCheese, .crust, .berries], category: .dessert, price: 7.49, ordersCount: 44, image: "cheesecake"),
        MenuItem(title: "Apple Pie", ingredients: [.apples, .flour, .cinnamon], category: .dessert, price: 5.99, ordersCount: 66, image: "applepie"),
        MenuItem(title: "Ice Cream Sundae", ingredients: [.iceCream, .chocolateSauce, .nuts, .whippedCream], category: .dessert, price: 4.99, ordersCount: 100, image: "icecream")
    ]

    private init() { }
}


