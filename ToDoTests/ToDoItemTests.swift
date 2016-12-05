//
//  ToDoItemTests.swift
//  ToDo
//
//  Created by Ievgenii Iablonskyi on 02/12/2016.
//  Copyright © 2016 Ievgenii Iablonskyi. All rights reserved.
//

import XCTest
@testable import ToDo

class ToDoItemTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    func testInit_ShouldSetTitle() {
        let item = ToDoItem(title: "Test title")
        XCTAssertEqual(item.title, "Test title", "Initialiser should set the item title")
    }

    func testInit_ShouldSetTitleWithAnyString() {
        let item = ToDoItem(title: "Different test title")
        XCTAssertEqual(item.title, "Different test title", "Initialiser should set the any title")
    }

    func testInit_ShouldSetTitleAndDescription() {
        let item = ToDoItem(title: "Test title", itemDescription: "Test description")
        XCTAssertEqual(item.itemDescription, "Test description", "Initialiser should set the item description")
    }

    func testInit_ShouldSetDescriptionWithAnyString() {
        let item = ToDoItem(title: "Test title", itemDescription: "Different test description")
        XCTAssertEqual(item.itemDescription, "Different test description", "Initialiser should set any description")
    }

    func testInit_ShouldSetDescriptionToNil() {
        let item = ToDoItem(title: "Test title", itemDescription: nil)
        XCTAssertEqual(item.itemDescription, nil, "Initialiser should set the item description to nil")
    }

    func testInit_ShouldSetTitleAndDescriptionAndTimestamp() {
        let item = ToDoItem(title: "Test title", itemDescription: "Test description", timestamp: 0.0)
        XCTAssertEqual(item.timestamp, 0.0, "Initialiser should set the timestamp")
    }

    func testInit_ShouldSetTimestampToAnyValue() {
        let item = ToDoItem(title: "Test title", itemDescription: "Test description", timestamp: 2.0)
        XCTAssertEqual(item.timestamp, 2.0, "Initialiser should set any timestamp")
    }

    func testInit_ShouldSetTimestampTonNil() {
        let item = ToDoItem(title: "Test title", itemDescription: "Test description", timestamp: nil)
        XCTAssertEqual(item.timestamp, nil, "Initialiser should set the timestamp to nil")
    }

    func testEqualItems_ShouldBeEqual() {
        let firstItem = ToDoItem(title: "Test")
        let secondItem = ToDoItem(title: "Test")
        XCTAssertEqual(firstItem, secondItem)
    }

    func testWhenTitleDiffers_ShouldBeNotEqual() {
        let firstItem = ToDoItem(title: "First title")
        let secondItem = ToDoItem(title: "Second title")
        XCTAssertNotEqual(firstItem, secondItem)
    }

    func testWhenDescriptionDiffers_ShouldBeNotEqual() {
        let firstItem = ToDoItem(title: "First title", itemDescription: "First description")
        let secondItem = ToDoItem(title: "First title", itemDescription: "Second description")
        XCTAssertNotEqual(firstItem, secondItem)
    }

    func testWhenTimestampDiffers_ShouldBeNotEqual() {
        let firstItem = ToDoItem(title: "First title", itemDescription: "First description", timestamp: 0.0)
        let secondItem = ToDoItem(title: "First title", itemDescription: "First description", timestamp: 1.0)
        XCTAssertNotEqual(firstItem, secondItem)
    }


}
