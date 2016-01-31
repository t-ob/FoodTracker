//
//  FoodTrackerTests.swift
//  FoodTrackerTests
//
//  Created by Tom O'Brien on 29/01/2016.
//
//

import XCTest
@testable import FoodTracker

class FoodTrackerTests: XCTestCase {
    
    // MARK: FoodTracker Tests
    func testMealInitialisation() {
        // Success case.
        let potentialItem = Meal(name: "Newest meal", photo: nil, rating: 5)
        XCTAssertNotNil(potentialItem)
        
        // Failure cases.
        let noName = Meal(name: "", photo: nil, rating: 5)
        XCTAssertNil(noName, "Name cannot be empty")
        
        let badRating = Meal(name: "Really bad rating", photo: nil, rating: -10)
        XCTAssertNil(badRating, "Rating must be non-negative")
    }
    
}
