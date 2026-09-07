//
//  OnboardingView.swift
//  SwiftBootcamp
//
//  Created by Dev Internee 1 on 07/09/2026.
//

import SwiftUI

struct OnboardingView: View {
    
    // Onboarding states:
    /*
     0 - Welcome screen
     1 - Add name
     2 - Add age
     3 - Add gender
     */
    
    @State var onboardingState: Int = 0
    
    let transition: AnyTransition = .asymmetric(
        insertion: .move(edge: .trailing),
        removal: .move(edge: .leading)
    )
    
    // Onboarding inputs
    @State var name: String = ""
    @State var age: Double = 50
    @State var gender: String = ""
    
    // For the alert
    @State var alertTitle: String = ""
    @State var showAlert: Bool = false
    
    // App Storage
    @AppStorage("name") var currentUserName: String?
    @AppStorage("age") var currentUserAge: Int?
    @AppStorage("gender") var currentUserGender: String?
    @AppStorage("signed_in") var currentUserSignedIn: Bool = false
    
    
    var body: some View {
        
        ZStack {
            
            // MARK: CONTENT
            
            ZStack {
                
                switch onboardingState {
                    
                case 0:
                    welcomeSection
                        .transition(transition)
                    
                case 1:
                    addNameSection
                        .transition(transition)
                    
                case 2:
                    addAgeSection
                        .transition(transition)
                    
                case 3:
                    addGenderSection
                        .transition(transition)
                    
                default:
                    RoundedRectangle(cornerRadius: 25.0)
                        .foregroundColor(.green)
                }
            }
            
            
            // MARK: BUTTON
            
            VStack {
                Spacer()
                
                bottomButton
            }
            .padding(30)
        }
        .alert(isPresented: $showAlert) {
            Alert(
                title: Text(alertTitle)
            )
        }
    }
}


// MARK: - COMPONENTS

extension OnboardingView {
    
    // MARK: Bottom Button
    
    private var bottomButton: some View {
        
        Text(
            onboardingState == 0
            ? "SIGN UP"
            : onboardingState == 3
            ? "FINISH"
            : "NEXT"
        )
        .font(.headline)
        .foregroundColor(.purple)
        .frame(height: 55)
        .frame(maxWidth: .infinity)
        .background(Color.white)
        .cornerRadius(10)
        .animation(nil, value: onboardingState)
        .onTapGesture {
            handleNextButtonPressed()
        }
    }
    
    
    // MARK: Welcome Section
    
    private var welcomeSection: some View {
        
        VStack(spacing: 40) {
            
            Spacer()
            
            Image(systemName: "heart.text.square.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 200)
                .foregroundColor(.white)
            
            Text("Find your match.")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundColor(.white)
                .overlay(
                    Capsule(style: .continuous)
                        .frame(height: 3)
                        .offset(y: 5)
                        .foregroundColor(.white),
                    alignment: .bottom
                )
            
            Text(
                "This is the #1 app for finding your match online! "
                + "In this tutorial we are practicing using AppStorage "
                + "and other SwiftUI techniques."
            )
            .fontWeight(.medium)
            .foregroundColor(.white)
            
            Spacer()
            Spacer()
        }
        .multilineTextAlignment(.center)
        .padding(30)
    }
    
    
    // MARK: Name Section
    
    private var addNameSection: some View {
        
        VStack(spacing: 20) {
            
            Spacer()
            
            Text("What's your name?")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundColor(.white)
            
            TextField(
                "Your name here...",
                text: $name
            )
            .font(.headline)
            .frame(height: 55)
            .padding(.horizontal)
            .background(Color.white)
            .cornerRadius(10)
            
            Spacer()
            Spacer()
        }
        .padding(30)
    }
    
    
    // MARK: Age Section
    
    private var addAgeSection: some View {
        
        VStack(spacing: 20) {
            
            Spacer()
            
            Text("What's your age?")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundColor(.white)
            
            Text("\(String(format: "%.0f", age))")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundColor(.white)
            
            Slider(
                value: $age,
                in: 18...100,
                step: 1
            )
            .accentColor(.white)
            
            Spacer()
            Spacer()
        }
        .padding(30)
    }
    
    
    // MARK: Gender Section
    
    private var addGenderSection: some View {
        
        VStack(spacing: 20) {
            
            Spacer()
            
            Text("What's your gender?")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundColor(.white)
            
            
            // MARK: Gender Picker
            
            Picker(
                selection: $gender
            ) {
                Text("Male")
                    .tag("Male")
                
                Text("Female")
                    .tag("Female")
                
                Text("Non-Binary")
                    .tag("Non-Binary")
                
            } label: {
                
                HStack {
                    Image(systemName: "person.fill")
                        .foregroundColor(.purple)
                    
                    Text(gender.isEmpty ? "Select a gender" : gender)
                        .font(.headline)
                        .foregroundColor(gender.isEmpty ? .gray : .purple)
                    
                    Spacer()
                    
                    Image(systemName: "chevron.down")
                        .font(.caption)
                        .foregroundColor(.gray)
                }
            }
            .padding(.horizontal, 16)
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .background(Color.white)
            .cornerRadius(12)
            .shadow(
                color: .black.opacity(0.08),
                radius: 5,
                x: 0,
                y: 3
            )
            .pickerStyle(.menu)
            .tint(.purple)
            
            
            Spacer()
            Spacer()
        }
        .padding(30)
    }
}


// MARK: - FUNCTIONS

extension OnboardingView {
    
    func handleNextButtonPressed() {
        
        // MARK: CHECK INPUTS
        
        switch onboardingState {
            
        case 1:
            
            guard name.count >= 3 else {
                
                showAlert(
                    title: "Your name must be at least 3 characters long!"
                )
                
                return
            }
            
            
        case 3:
            
            guard !gender.isEmpty else {
                
                showAlert(
                    title: "Please select a gender before moving forward!"
                )
                
                return
            }
            
            
        default:
            break
        }
        
        
        // MARK: GO TO NEXT SECTION
        
        if onboardingState == 3 {
            
            signIn()
            
        } else {
            
            withAnimation(.spring()) {
                onboardingState += 1
            }
        }
    }
    
    
    // MARK: Sign In
    
    func signIn() {
        
        currentUserName = name
        currentUserAge = Int(age)
        currentUserGender = gender
        
        withAnimation(.spring()) {
            currentUserSignedIn = true
        }
    }
    
    
    // MARK: Show Alert
    
    func showAlert(title: String) {
        
        alertTitle = title
        showAlert.toggle()
    }
}


#Preview {
    OnboardingView()
}
