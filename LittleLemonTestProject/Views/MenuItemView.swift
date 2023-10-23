//
//  MenuItemView.swift
//  LittleLemonTestProject
//
//  Created by Viktor on 2023-10-22.
//

import SwiftUI

struct MenuItemView: View {
    var menuItem: MenuItem
    
    var body: some View {
        VStack {
            Image(menuItem.image)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 150, height: 150)
                .clipped()
                .cornerRadius(10)
            Text(menuItem.title)
                .font(.subheadline)
                .multilineTextAlignment(.center)
                .lineLimit(2)
        }
    }
}


struct MenuItemView_Previews: PreviewProvider {
    static var previews: some View {
        let sampleMenuItem = MenuItem(title: "Sample Dish", ingredients: [.chocolate], category: .food, price: 1299, ordersCount: 0, image: "bolognese")
        MenuItemView(menuItem: sampleMenuItem)
    }
}
