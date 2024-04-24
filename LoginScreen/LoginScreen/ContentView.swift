//
//  ContentView.swift
//  LoginScreen
//
//  Created by Kishan on 18/01/24.
//

import SwiftUI

struct ContentView: View {
    @State private var userName: String = String()
    @State private var password: String = String()
    
    var body: some View {
        VStack {
            Text("Login").font(.largeTitle).padding()
            Text("Explore SwiftUIT with Kishan").font(.subheadline).padding()
            TextField("User Name", text: $userName).padding().background(Color.gray).cornerRadius(4.0)
            
            SecureField("Password", text: $password).padding().background(Color.gray).cornerRadius(4.0)
            
            HStack {
                Button(action: {
                    debugPrint("Loggin Tapped")
                }, label: {
                    Text("Login")
                })
                
                Spacer()
                
                Button(action: {
                    debugPrint("Forgot Password Tapped")
                }, label: {
                    Text("Forgot Password")
                })
            }.padding()
        }.padding()
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
