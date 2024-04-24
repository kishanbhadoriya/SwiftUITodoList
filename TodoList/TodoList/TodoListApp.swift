//
//  TodoListApp.swift
//  TodoList
//
//  Created by Kishan on 22/03/24.
//

import SwiftUI

/*
 MVVM Architecture
 
 Model -- Data Point
 View -- UI
 ViewModel -- Manages the Model for view
 
*/

@main
struct TodoListApp: App {
    
    @StateObject var listViewModel: ListViewModel = ListViewModel()
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ListView()
            }
            .navigationViewStyle(StackNavigationViewStyle())
            .environmentObject(listViewModel)
        }
    }
}
