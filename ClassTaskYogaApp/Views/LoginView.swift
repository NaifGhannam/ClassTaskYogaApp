//
//  LoginView.swift
//  YogaApp
//
//  Created by Mac on 16/09/1446 AH.
//

import SwiftUI

struct LoginView : View {
    
    @StateObject private var viewModel = AuthViewModel()
    @Environment(\.presentationMode) var presentationMode

var body: some View {
    VStack{
        Image("welcomeBack")
            .resizable()
            .scaledToFit()
            .frame(width: 200, height: 200)
        VStack{
            Text("welcom back")
                .font(.largeTitle)
                .fontWeight(.bold)
            
            TextField("Email", text: $viewModel.email)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
            
            SecureField("Password", text: $viewModel.password)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
            
            HStack{
                Text("Forgot password?")
                    .foregroundStyle(.secondary)
                    .font(.caption)
                    .onTapGesture {
                        // func to return pass
                        
                                    }
                    .padding(.leading)
                Spacer()
                
            }
            
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

            
            Button(action: viewModel.login) {
                           Text("Sign In")
                               .bold()
                               .frame(maxWidth: .infinity)
                               .padding()
                               .background(Color.brown)
                               .foregroundColor(.white)
                               .cornerRadius(50)
                       }
                       .padding()
            
            
            HStack {
                          Text("Don't have an account?")
                          NavigationLink("Sign up", destination: SignupView())
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
  LoginView()
}
