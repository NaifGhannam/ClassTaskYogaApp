//
//  SignupView.swift
//  YogaApp
//
//  Created by Mac on 16/09/1446 AH.
//

import SwiftUI

struct SignupView: View {
    // @Binding var currentScreen: ContentView.Screen
    
    @StateObject private var viewModel = AuthViewModel()
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        VStack {
            Image("SignUpIcon") // Replace with an appropriate image
                .resizable()
                .scaledToFit()
                .frame(height: 200)
            
            VStack() {
                
                Text("Create Account")
                    .font(.title)
                    .fontWeight(.bold)
                
                TextField("Full Name", text: $viewModel.fullName)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                
                TextField("Email", text: $viewModel.email)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                
                SecureField("Password", text: $viewModel.password)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                
                SecureField("Confirm Password", text: $viewModel.confirmPassword)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                
                // google and facebook signup
                HStack (spacing: 50){
                    
                    Button(action: {
                        if let url = URL(string: "https://www.facebook.com") {
                            UIApplication.shared.open(url)
                        }
                    }) {
                        Image("facebook")
                            .resizable()
                            .frame(width: 40, height: 40)
                    }
                    
                    Button(action: {
                        if let url = URL(string: "https://www.google.com") {
                            UIApplication.shared.open(url)
                        }
                    }) {
                        Image("google")
                            .resizable()
                            .frame(width: 40, height: 40)
                    }
                    
                    
                    
                    
                    
                    Button(action: {
                        if let url = URL(string: "https://www.apple.com") {
                            UIApplication.shared.open(url)
                        }
                    }) {
                        Image("Apple")
                            .resizable()
                            .frame(width: 40, height: 40)
                    }
                }
                .padding()
                
                
                Button(action: viewModel.signup) {
                    Text("Sign Up")
                        .bold()
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.brown)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
                .padding()
                
                HStack {
                    Text("Already have an account?")
                    NavigationLink("Log in", destination: LoginView())
                        .foregroundColor(.blue)
                }
                Spacer()
            }
            .padding()
            .background(Color.brown.opacity(0.6))
            .cornerRadius(50)
            .ignoresSafeArea(.all)
            
            
            
            
        }.background(Color.brown.opacity(0.3))
        
        
    }
}



#Preview {
    SignupView()
}
