//
//  AuthViewModel.swift
//  YogaApp
//
//  Created by Mac on 16/09/1446 AH.
//

import Foundation
import SwiftUI

class AuthViewModel: ObservableObject {
    @Published var email: String = ""
    @Published var password: String = ""
    @Published var fullName: String = ""
    @Published var confirmPassword: String = ""
    @Published var isAuthenticated = false
    
    func login() {
        // func
    }
    
    func signup() {
        // func 
    }
}
