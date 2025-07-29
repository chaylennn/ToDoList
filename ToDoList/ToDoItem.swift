//
//  ToDoItem.swift
//  ToDoList
//
//  Created by Scholar on 7/29/25.
//

import Foundation
import SwiftData

@Model
class ToDoItem{
    var title: String
    var isImportant: Bool
    
    init(title: String, isImportant: Bool = false){
        self.title = title
        self.isImportant = isImportant
    }
}
