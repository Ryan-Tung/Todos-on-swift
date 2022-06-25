//
//  ContentView.swift
//  Todos
//
//  Created by RYAN TUNG TZE-JIN on 25/6/22.
//

import SwiftUI

struct ContentView: View {
    @State var todos = [
        Todo(title: "papap"),
        Todo(title: "papaep"),
        Todo(title: "o"),
    ]
    var body: some View {
        NavigationView {
        List(todos) { todo in
            Text(todo.title)
            
        }
        .navigationTitle("tododododod")
            
        }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
        }
    }
}
}
