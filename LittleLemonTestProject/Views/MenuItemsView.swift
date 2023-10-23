//
//  MenuItemsView.swift
//  LittleLemonTestProject
//
//  Created by Viktor on 2023-10-22.
//
import SwiftUI

struct MenuItemsView: View {
    @ObservedObject private var viewModel = MenuViewViewModel()
    @State private var isSheetPresented = false
    
    var body: some View {
        NavigationView {
             ScrollView(showsIndicators: false)  {
                    ForEach(MenuCategory.allCases, id: \.self) { category in
                        if let menuItems = viewModel.filteredMenuItemsByCategory[category] {
                            MenuCategorySection(category: category, menuItems: menuItems)
                        }
                            
                    }
                    
                    
                    
                    
                
            }
            .padding()
            .navigationTitle("Menu")
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: {
                        isSheetPresented.toggle()
                    }) {
                        Image(systemName: "slider.horizontal.3")
                            .imageScale(.large)
                    }
                }
            }
        }
        .sheet(isPresented: $isSheetPresented) {
            NavigationView {
                MenuItemsOptionView(isSheetPresented: $isSheetPresented, selectedCategories: $viewModel.selectedCategories, selectedSortOption: $viewModel.selectedSortOption)
                    .navigationBarItems(trailing: Button("Done") {
                        isSheetPresented.toggle()
                    })
            }
        }
    }
}

struct MenuItemsView_Previews: PreviewProvider {
    static var previews: some View {
        MenuItemsView()
    }
}
