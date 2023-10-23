//
//  MenuDetailView.swift
//  LittleLemonTestProject
//
//  Created by Viktor on 2023-10-22.
//

import SwiftUI

struct MenuDetailView: View {
    var menuItem: MenuItem
    @State private var isOrderAlertPresented = false
    
    var body: some View {
        
        NavigationView {
            
            VStack {
                Image("LittleLemonLogo")
                    .resizable()
                    .frame(width: 70, height: 90)
                    .padding()
            
                
                VStack(alignment: .leading)  {
                    
                    Image(menuItem.image)
                        .resizable()
                        .scaledToFill()
                        .frame(width: 300, height: 250)
                        .cornerRadius(10)
                    
                        HStack {
                            Text("Dish:")
                                .font(.headline)
                            Text(menuItem.title)
                        }
                        
                        
                        HStack {
                            
                            Text("Price:")
                                .font(.headline)
                            Text("$\(String(format: "%.2f", menuItem.price))")
                        }
                        
                        HStack {
                            Text("Ingredients:")
                                .font(.headline)
                            Text(menuItem.ingredients.map { $0.rawValue.capitalized }.joined(separator: ", "))
                        }
                        
                   
                   
                }
                .padding()
            
                
                Spacer()
                
                Button(action: {
                                  isOrderAlertPresented.toggle()
                              }) {
                                  Text("Order")
                                      .font(.headline)
                                      .foregroundColor(.white)
                                      .frame(width: 200, height: 50)
                                      .background(Color.blue)
                                      .cornerRadius(10)
                              }
                              .padding()
                              .alert(isPresented: $isOrderAlertPresented) {
                                  Alert(title: Text("Awesome choice :)"), message: Text("We are now preparing your Dish!"), dismissButton: .default(Text("Yammy")))
                              }
                
            }
            
            
        }
        .navigationTitle(menuItem.title)
    }
}


struct MenuDetailView_Previews: PreviewProvider {
    static var previews: some View {
        let sampleMenuItem = MenuItem(title: "Sample Dish", ingredients: [.chocolate], category: .food, price: 1299, ordersCount: 0, image: "bolognese")
        MenuDetailView(menuItem: sampleMenuItem)
    }
}
