//
//  LongestArrayStringKataTests.swift
//  LongestArrayStringKataTests
//
//  Created by Artem Kislitsyn on 22.09.2018.
//  Copyright © 2018 3. All rights reserved.
//

import XCTest
@testable import LongestArrayStringKata

class LongestArrayStringKataTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
	func testLongestString() {
		//arrange
		let arr = ["Bar","baaar","b","Baaaaaaaaaaaaar"]
		
		//act
		let str = arr.longestStringInArray()
		
		//assert
		XCTAssertEqual("Baaaaaaaaaaaaar",str , "not equal")
		
	}
	
    
}
