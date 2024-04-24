//
//  User.swift
//  ObservablePropertyWrapper
//
//  Created by Kishan on 19/01/24.
//

import Foundation


class User: ObservableObject {
    @Published var name: String = String()
    @Published var lstName: String = String()
}

class Account: ObservableObject {
    @Published var accountBalance: Double = 0.0
}
