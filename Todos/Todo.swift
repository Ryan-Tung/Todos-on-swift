//
//  Todo.swift
//  Todos
//
//  Created by RYAN TUNG TZE-JIN on 25/6/22.
//

import Foundation
struct Todo: Identifiable {
    
    let id = UUID()
    var title: String
    var isDone = false
}
