//
//  TodoDetailView.swift
//  Todos
//
//  Created by RYAN TUNG TZE-JIN on 25/6/22.
//

import SwiftUI

struct TodoDetailView: View {

    @Binding var todo: Todo

    var body: some View {
        VStack{
            TextField("Todo title!", text: $todo.title)
                .multilineTextAlignment(.center)
                .background(Color(.systemGray2))
            Button{
                todo.isDone.toggle()
            }label: {
                Text("Mark as \(todo.isDone ? "not" : "done")")
            }
        }
        
    }
    
}

struct TodoDetailView_Previews: PreviewProvider {
    static var previews: some View {
        TodoDetailView(todo: .constant(Todo(title: "Water the cat demo")))
    }
}
