//
//  ContentView.swift
//  Todos
//
//  Created by RYAN TUNG TZE-JIN on 25/6/22.
//

import SwiftUI

struct ContentView: View {
    @State var todos = [
        Todo(title: "drink cancer1", details: "d"),
        Todo(title: "visit jc's grandma and grandpa"),
        Todo(title: "deal flour", isDone: true, details: "smash")
    ]
    var body: some View {
        NavigationView {
            List{
                ForEach($todos) { $todo in
                    NavigationLink{
                        TodoDetailView(todo: $todo)
                    } label: {
                        HStack{
                            Image(systemName:
                                    todo.isDone ? "checkmark.square.fill" : "square")
                            VStack(alignment: .leading){
                                Text(todo.title)
                                    .strikethrough(todo.isDone)
                            
                                if !todo.details.isEmpty {
                                    Text(todo.details)
                                        .font(.caption)
                                        .foregroundColor(.gray)
                                }}}
                        
                    }
                }
                 .onDelete { indexSet in
                 todos.remove(atOffsets: indexSet)
                 }
                    
                    
                
                
                
            
            }
        .navigationTitle("tododododod")
            
    }
}
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
        }
    }
}

