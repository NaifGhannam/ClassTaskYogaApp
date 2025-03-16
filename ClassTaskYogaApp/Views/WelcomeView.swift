//
//  WelcomeView.swift
//  YogaApp
//
//  Created by Mac on 16/09/1446 AH.
//
import SwiftUI

struct WelcomeView: View {
    var body: some View {
        NavigationView {
            VStack {
                Image("yoga3")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 200)

                Text("Welcome To")
                    .font(.title)
                    .fontWeight(.bold)

                Text("We start the journey to a healthy life!")
                    .font(.subheadline)
                    .foregroundColor(.gray)

                NavigationLink("Sign Up", destination: SignupView())
                    .frame(width: 200, height: 50)
                    .background(Color.gray.opacity(0.2))
                    .cornerRadius(50)

                NavigationLink("Log In", destination: LoginView())
                    .frame(width: 200, height: 50)
                    .background(Color.brown)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
            .padding()
        }
    }
}
#Preview {
    WelcomeView()
}
