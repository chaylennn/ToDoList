//
//  ContentView.swift
//  ToDoList
//
//  Created by Scholar on 7/29/25.
//

import SwiftUI

struct ContentView: View {
    @State private var showNewTask = false
    
    var body: some View {
        VStack{
            HStack{
                Text("To Do List")
                    .font(.system(size: 40))
                    .fontWeight(.black)
                Spacer()
                Button{
                    withAnimation{
                        showNewTask = true
                    }
                } label:{
                    Text("+")
                        .font(.title)
                        .fontWeight(.bold)
    
                }
                
            }
            .padding()
        }
        if showNewTask{
            NewToDoView()
        }
    }
}

#Preview {
    ContentView()
}
