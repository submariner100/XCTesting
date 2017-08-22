//
//  XCTestingTests.swift
//  XCTestingTests
//
//  Created by Macbook on 22/08/2017.
//  Copyright © 2017 Chappy-App. All rights reserved.
//

import XCTest
@testable import XCTesting

class XCTestingTests: XCTestCase {
    
	override func setUp() {
		super.setUp()
		// Put setup code here. This method is called before the invocation of each test method in the class.
	}
	
	override func tearDown() {
		super.tearDown()
	}
	
	func testAllWordsLoaded() {
		
		let playData = PlayData()
		XCTAssertEqual(playData.allWords.count, 18440, "allWords was not 18440")
	
	}
	
	func testWordCountsAreCorrect() {
		
		let playData = PlayData()
		
		XCTAssertEqual(playData.wordCounts.count(for: "home"), 174, "Home does not appear 174 times")
		
		XCTAssertEqual(playData.wordCounts.count(for: "fun"), 4, "fun does not appear 4 times")
		
		XCTAssertEqual(playData.wordCounts.count(for: "mortal"), 41, "Home does not appear 41 times")
	
	}
	
	func testWordsLoadQuickly() {
		
		measure {
			
			_ = PlayData()
		}
	}
}
