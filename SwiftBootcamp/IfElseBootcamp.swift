import SwiftUI

struct IfElseBootcamp: View {
    
    @State var isLoggedIn: Bool = false
    
    var body: some View {
        ZStack {
            
            LinearGradient(
                colors: [.purple, .blue],
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            )
            .ignoresSafeArea()
            
            VStack(spacing: 30) {
                
                Text("My Account")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundStyle(.white)
                
                if isLoggedIn {
                    VStack(spacing: 15) {
                        Image(systemName: "checkmark")
                            .font(.system(size: 70))
                            .foregroundStyle(.green)
                        
                        Text("Welcome Back!")
                            .font(.title2)
                            .fontWeight(.bold)
                        
                        Text("You are logged in.")
                            .foregroundStyle(.secondary)
                    }
                    .frame(maxWidth: .infinity)
                    .padding(40)
                    .background(.white)
                    .clipShape(RoundedRectangle(cornerRadius: 25))
                    
                } else {
                    VStack(spacing: 15) {
                        Image(systemName: "questionmark")
                            .font(.system(size: 70))
                            .foregroundStyle(.gray)
                        
                        Text("You're Not Logged In")
                            .font(.title2)
                            .fontWeight(.bold)
                        
                        Text("Please log in to continue.")
                            .foregroundStyle(.secondary)
                    }
                    .frame(maxWidth: .infinity)
                    .padding(40)
                    .background(.white)
                    .clipShape(RoundedRectangle(cornerRadius: 25))
                }
                
                Button {
                    isLoggedIn.toggle()
                } label: {
                    Text(isLoggedIn ? "Log Out" : "Log In")
                        .font(.headline)
                        .foregroundStyle(.white)
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(.black)
                        .clipShape(RoundedRectangle(cornerRadius: 15))
                }
            }
            .padding(25)
        }
    }
}

#Preview {
    IfElseBootcamp()
}
