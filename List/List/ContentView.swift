//
//  ContentView.swift
//  List
//
//  Created by Kishan on 01/02/24.
//

import SwiftUI

struct Student: Identifiable {
    let name: String
    let id: Int
}

struct ContentView: View {
    @State var studentArr = [Student(name: "Kishan", id: 10), Student(name: "Priya", id: 15), Student(name: "Sakshee", id: 20), Student(name: "Mohit", id: 25)]
    
    var body: some View {
        NavigationView {
            List {
                ForEach(studentArr, id: \.id) { student in
                    Text(student.name)
                    NavigationLink(
                        destination: NavigateToAnotherView(),
                        label: {
                            Text("Navigate")
                        })
                }
            }
        }.navigationTitle("LandMark")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
