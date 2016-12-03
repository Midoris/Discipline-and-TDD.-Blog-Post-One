//
//  ToDoItem.swift
//  ToDo
//
//  Created by Ievgenii Iablonskyi on 02/12/2016.
//  Copyright © 2016 Ievgenii Iablonskyi. All rights reserved.
//

import Foundation

struct ToDoItem: Equatable {

    let title: String
    let itemDescription: String?
    let timestamp: Double?

    init(title: String, itemDescription: String? = nil, timestamp: Double? = nil) {
        self.title = title
        self.itemDescription = itemDescription
        self.timestamp = timestamp
    }

}

func ==(lhs: ToDoItem, rhs: ToDoItem) -> Bool {
    guard lhs.title == rhs.title else { return false }
    return lhs.itemDescription == rhs.itemDescription && lhs.timestamp == rhs.timestamp
}
