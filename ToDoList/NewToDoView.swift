//
//  NewToDoView.swift
//  ToDoList
//
//  Created by Scholar on 7/29/25.
//

import SwiftUI
import SwiftData


struct NewToDoView: View {
    @Binding var showNewTask: Bool
    @Bindable var toDoItem: ToDoItem
    @Environment(\.modelContext) var modelContext
    
    
    var body: some View {
        VStack{
            Text("Task title:")
            TextField("Enter the task description", text: $toDoItem.title, axis: .vertical)
                .padding()
                .background(Color(.systemGroupedBackground))
                .cornerRadius(15)
                .padding()
            Toggle(isOn: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Is On@*/.constant(true)/*@END_MENU_TOKEN@*/) {
                Text("Is it important?")
            }
            .padding()
            Button{
                addToDo()
                showNewTask = false
            }label:{
                Text("Save")
            }
        }
    }
    func addToDo(){
        let toDo = ToDoItem(title: toDoItem.title, isImportant: toDoItem.isImportant)
        modelContext.insert(toDo)
    }
}



#Preview {
    NewToDoView(showNewTask: .constant(false), toDoItem: ToDoItem(title: "", isImportant: false))
}
