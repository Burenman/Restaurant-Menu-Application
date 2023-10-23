//
//  MenuItemsOptionView.swift
//  LittleLemonTestProject
//
//  Created by Viktor on 2023-10-22.
//

import SwiftUI

struct MenuItemsOptionView: View {
    @Binding var isSheetPresented: Bool
    @Binding var selectedCategories: Set<MenuCategory>
    @Binding var selectedSortOption: SortOption
    
    var body: some View {
        List {
            Section("Selected Categories") {
                ForEach(MenuCategory.allCases, id: \.self) { category in
                    Button(action: {
                        if selectedCategories.contains(category) {
                            selectedCategories.remove(category)
                        } else {
                            selectedCategories.insert(category)
                        }
                    }) {
                        HStack {
                            Text(category.rawValue)
                            Spacer()
                            if selectedCategories.contains(category) {
                                Image(systemName: "checkmark")
                                    .foregroundColor(.blue)
                            }
                        }
                    }
                }
            }
            
            Section("Sort by") {
                ForEach(SortOption.allCases, id: \.self) { option in
                    Button(action: {
                        selectedSortOption = option
                    }) {
                        HStack {
                            Text(option.rawValue)
                            Spacer()
                            if selectedSortOption == option {
                                Image(systemName: "checkmark")
                                    .foregroundColor(.blue)
                            }
                        }
                    }
                }
            }
        }
    }
}

enum SortOption: String, CaseIterable {
    case MostPopular = "MostPopular"
    case Price = "Price $-$$$"
    case AZ = "A-Z"
}

enum MenuCategory: String, CaseIterable {
    case food = "Food"
    case drink = "Drinks"
    case dessert = "Desserts"
}

