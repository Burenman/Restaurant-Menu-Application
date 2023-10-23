//
//  LittleLemonTestProjectTests.swift
//  LittleLemonTestProjectTests
//
//  Created by Viktor on 2023-10-22.
//


    import XCTest
    @testable import LittleLemonTestProject

    class MenuItemTests: XCTestCase {

        func testMenuItemTitle() {
            let menuItem = MenuItem(title: "Sample Title", ingredients: [.chocolate], category: .food, price: 1299, ordersCount: 0)
            XCTAssertEqual(menuItem.title, "Sample Title", "Menu item title should match the initialized value.")
        }

        func testMenuItemIngredients() {
            let menuItem = MenuItem(title: "Sample Title", ingredients: [.chocolate], category: .food, price: 1299, ordersCount: 0)
            XCTAssertEqual(menuItem.ingredients, [.chocolate], "Menu item ingredients should match the initialized value.")
        }
    }


