//
//  MenuCategoryView.swift
//  LittleLemonTestProject
//
//  Created by Viktor on 2023-10-22.
//

import SwiftUI

struct MenuCategorySection: View {
    var category: MenuCategory
    var menuItems: [MenuItem]
    
  
    var body: some View {
        
        VStack(alignment: .leading) {
            
            Text(category.rawValue)
                .font(.headline)
                .padding(.top, 16)
            
            // Divide menuItems into chunks of 3
            ForEach(menuItems.chunked(into: 2), id: \.self) { rowItems in
                HStack(spacing: 24) {
                    ForEach(rowItems, id: \.id) { menuItem in
                        NavigationLink(destination: MenuDetailView(menuItem: menuItem)) {
                            MenuItemView(menuItem: menuItem)
                                // Adjust spacing and width as needed
                        }
                    }
                }
            }
        }
    }
}

extension Array {
    func chunked(into size: Int) -> [[Element]] {
        return stride(from: 0, to: count, by: size).map {
            Array(self[$0 ..< Swift.min($0 + size, count)])
        }
    }
}
