//
//  ContentView.swift
//  BindingPropertyWrapper
//
//  Created by Kishan on 19/01/24.
//

import SwiftUI

struct ContentView: View {
    @State private var isOn: Bool = false
    
    var body: some View {
        VStack {
            Text("Binding Demo").font(.title).foregroundColor(isOn ? .blue : .gray)
            Text("Kishan").font(.title3).foregroundColor(.gray)
            ToggeleChildView(isOn: $isOn)
        }.padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
