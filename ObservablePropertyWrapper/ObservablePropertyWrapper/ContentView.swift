//
//  ContentView.swift
//  ObservablePropertyWrapper
//
//  Created by Kishan on 19/01/24.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject private var user: User = User()
    @ObservedObject private var account: Account = Account()
    
    var body: some View {
        NavigationView {
            VStack {
                Text("Logedin user name is = \(user.name)")
                    .font(.title2)
                TextField("User Name", text: $user.name)
                    .cornerRadius(4.0).border(Color.gray, width: 1)
                    .padding()
                NavigationLink("Navigate to SecondView", destination: SecondView())
            }.padding()
            .navigationBarTitle("Environment Object")
        }.environmentObject(user)
        .environmentObject(account)
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
