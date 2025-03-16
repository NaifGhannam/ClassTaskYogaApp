
import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                Image("homeIcon")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 200)
                
                Text("Welcome To")
                    .font(.title)
                    .fontWeight(.bold)
                    .padding(.bottom, 50)

                Text("We start the journey to a healthy life!")
                    .font(.title2)
                    //.foregroundColor(.gray)
                    .padding(.bottom, 200)

                NavigationLink("Sign Up", destination: SignupView())
                    .frame(width: 300, height: 50)
                    .background(.clear)
                    .overlay(
                        RoundedRectangle(cornerRadius: 50)
                            .stroke(style: StrokeStyle(lineWidth: 2))
                            .foregroundColor(Color.brown)
                            
                        )
                
            

                NavigationLink("Log In", destination: LoginView())
                    .frame(width: 300, height: 50)
                    .background(Color.brown)
                    .foregroundColor(.white)
                    .border(Color.brown, width: 3)
                    .cornerRadius(50)
                    
                
            }
            .padding()
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color.brown.opacity(0.3))
            
            
            
        }
    }
}


#Preview {
    ContentView()
}
