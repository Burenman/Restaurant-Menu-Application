//
//  Ingredient.swift
//  LittleLemonTestProject
//
//  Created by Viktor on 2023-10-22.
//

import Foundation

enum Ingredient: String, CaseIterable {
    // Vegetables
    case vegetables
    case lettuce
    case tomatoes
    case cucumbers
    case olives
    case mushrooms
    case bellPepper
    case onions
    case spinach
    case carrots
    
    // Fruits
    case apples
    case oranges
    case mango
    case lemon
    case berries
    
    // Meat and Seafood
    case chicken
    case beef
    case salmon
    case shrimp
    
    // Dairy and Dairy Alternatives
    case cheese
    case creamCheese
    case yogurt
    case milk
    case iceCream
    
    // Sauces and Condiments
    case tomatoSauce
    case creamSauce
    case garlicButterSauce
    case currySauce
    case chocolateSauce
    
    // Grains and Flours
    case pasta
    case rice
    case crust
    case flour
    
    // Beverages
    case coffee
    case tea
    case orangeJuice
    case lemonade
    case soda
    case water
    case carbonatedWater
    case flavoring
    
    // Other
    case sugar
    case salt
    case pepper
    case cinnamon
    case nuts
    case ice
    
    // For Espresso
    case coffeeBeans
    
    // For Smoothie
    case banana
    
    // For Hot Tea
    case teaBag
    case hotWater
    
    // For Milkshake
    case whippedCream
    
    // For Pizza
    case pizzaDough
    
    // For Soup
    case broth
    case potatoes
    
    // For Salad
    case croutons
    
    // Chocolate
    case chocolate
}
