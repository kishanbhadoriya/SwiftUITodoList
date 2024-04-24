//
//  ThirdView.swift
//  ObservablePropertyWrapper
//
//  Created by Kishan on 19/01/24.
//

import SwiftUI

struct ThirdView: View {
    @EnvironmentObject var user: User
    @EnvironmentObject var account: Account
    
    var body: some View {
        Text("Logedin User Name = \(user.name) with account balance = \(account.accountBalance)")
    }
}

struct ThirdView_Previews: PreviewProvider {
    static var previews: some View {
        ThirdView()
            .environmentObject(User())
            .environmentObject(Account())
    }
}
