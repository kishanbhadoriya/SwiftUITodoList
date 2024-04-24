//
//  HomeView.swift
//  TabView
//
//  Created by Kishan on 01/02/24.
//

import SwiftUI

struct HomeView: View {
    @State private var states = ["Jammu Kashmir", "Himachal Pradesh", "Uttrakhand", "Leh", "Ladakh", "Delhi", "Utter Pradesh", "Rajisthan", "Bihar", "Arunachal Pradesh", "Paschim Bangal", "Madhya Pradesh"]
    var body: some View {
        NavigationView {
            List(states, id: \.self) { states in
                NavigationLink(
                    destination: StateDetailView(selectedState: states),
                    label: {
                        Text(states)
                    })
            }
        }.navigationTitle("State")
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
