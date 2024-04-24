//
//  StateDetailView.swift
//  TabView
//
//  Created by Kishan on 01/02/24.
//

import SwiftUI

struct StateDetailView: View {
    var selectedState: String
    var body: some View {
        Text("\(selectedState) Detail View")
    }
}

struct StateDetailView_Previews: PreviewProvider {
    static var previews: some View {
        StateDetailView(selectedState: "MP")
    }
}
