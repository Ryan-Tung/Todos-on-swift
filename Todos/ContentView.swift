//
//  ContentView.swift
//  Todos
//
//  Created by RYAN TUNG TZE-JIN on 25/6/22.
//

import SwiftUI

struct ContentView: View {
    var todos = [
        Todo(title: "papap"),
        Todo(title: "papaep"),
        Todo(title: "o"),
    ]
    var body: some View {
        List(todos) { todo in
            Text(todo.title)
            
        }    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
