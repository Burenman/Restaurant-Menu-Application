//
//  MenuViewViewModel.swift
//  LittleLemonTestProject
//
//  Created by Viktor on 2023-10-22.
//

import Foundation
import Observation

@Observable
class MenuViewViewModel: ObservableObject {
    

    var selectedCategories: Set<MenuCategory> = Set(MenuCategory.allCases)
    var selectedSortOption: SortOption = .MostPopular
   
    var allMenuItems: [MenuItem] {
           return MockData.shared.foodItems + MockData.shared.drinkItems + MockData.shared.dessertItems
       }
    
    var filteredMenuItemsByCategory: [MenuCategory: [MenuItem]] {
        let groupedMenuItems = Dictionary(grouping: filteredMenuItems, by: { $0.category })
        return groupedMenuItems
    }
    

    var filteredMenuItems: [MenuItem] {
        // Filter menu items based on selected categories
        var filteredItems = allMenuItems.filter { selectedCategories.contains($0.category) }
        
        // Sort filtered items based on sort option
        switch selectedSortOption {
        case .MostPopular:
            // Implement most popular sorting logic here
            filteredItems.sort { $0.ordersCount > $1.ordersCount }
            break
        case .Price:
            // Implement  price sorting logic here
            filteredItems.sort { $0.price > $1.price }
            break
        case .AZ:
            filteredItems.sort { $0.title < $1.title }
        }
        
        return filteredItems
    }
    
}
