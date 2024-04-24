//
//  SecondView.swift
//  ObservablePropertyWrapper
//
//  Created by Kishan on 19/01/24.
//

import SwiftUI

struct SecondView: View {
    @EnvironmentObject var account: Account
    
    var body: some View {
        VStack {
            Stepper("Balance \(account.accountBalance)", value: $account.accountBalance)
//            TextField("account balance", value: $account.$accountBalance, formatter: NumberFormatter())
            NavigationLink("Navigation to ThirdView", destination: ThirdView())
        }.padding()
    }
}

struct SecondView_Previews: PreviewProvider {
    static var previews: some View {
        SecondView()
            .environmentObject(Account())
    }
}
