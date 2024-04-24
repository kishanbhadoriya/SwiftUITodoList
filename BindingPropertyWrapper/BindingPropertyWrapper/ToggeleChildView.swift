//
//  ToggeleChildView.swift
//  BindingPropertyWrapper
//
//  Created by Kishan on 19/01/24.
//

import SwiftUI

struct ToggeleChildView: View {
    @Binding public var isOn: Bool
    
    var body: some View {
        VStack {
            Toggle(isOn: $isOn, label: {
                Text("isWatching")
            }).fixedSize()
        }
    }
}

struct ToggeleChildView_Previews: PreviewProvider {
    static var previews: some View {
        ToggeleChildView(isOn: .constant(false))
    }
}
