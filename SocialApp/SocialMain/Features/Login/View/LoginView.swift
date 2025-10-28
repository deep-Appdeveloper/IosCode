//
//  LoginView.swift
//  SocialApp
//
//  Created by deepak saini on 28/10/25.
//


import SwiftUI

struct LoginView: View {
    @State private var email = ""
    @State private var password = ""
    @State private var isSecure = true
    
    var body: some View {
        ZStack {
            // Background
            LinearGradient(gradient: Gradient(colors: [.purple, .blue]),
                           startPoint: .topLeading,
                           endPoint: .bottomTrailing)
                .ignoresSafeArea()
            
            VStack(spacing: 25) {
                Spacer()
                
                // App Title
                Text("Welcome Back 👋")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                
                Text("Login to your account")
                    .foregroundColor(.white.opacity(0.8))
                
                // Email Field
                TextField("Email", text: $email)
                    .padding()
                    .background(Color.white.opacity(0.9))
                    .cornerRadius(12)
                    .autocapitalization(.none)
                    .keyboardType(.emailAddress)
                
                // Password Field
                HStack {
                    if isSecure {
                        SecureField("Password", text: $password)
                    } else {
                        TextField("Password", text: $password)
                    }
                    Button(action: { isSecure.toggle() }) {
                        Image(systemName: isSecure ? "eye.slash.fill" : "eye.fill")
                            .foregroundColor(.gray)
                    }
                }
                .padding()
                .background(Color.white.opacity(0.9))
                .cornerRadius(12)
                
                // Forgot Password
                HStack {
                    Spacer()
                    Button("Forgot Password?") {
                        // Forgot Password Action
                    }
                    .font(.caption)
                    .foregroundColor(.white)
                }
                
                // Login Button
                Button(action: {
                    // Handle Login Action
                }) {
                    Text("Login")
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.blue.opacity(0.9))
                        .foregroundColor(.white)
                        .fontWeight(.semibold)
                        .cornerRadius(12)
                }
                
                // Divider
                HStack {
                    Rectangle().frame(height: 1).foregroundColor(.white.opacity(0.4))
                    Text("or continue with")
                        .foregroundColor(.white.opacity(0.8))
                        .font(.caption)
                    Rectangle().frame(height: 1).foregroundColor(.white.opacity(0.4))
                }
                .padding(.vertical, 10)
                
                // Social Login Buttons
                HStack(spacing: 20) {
                    SocialButton(image: "logo.google", text: "Google", color: .red) {
                        // Google Login
                    }
                    SocialButton(image: "logo.facebook", text: "Facebook", color: .blue) {
                        // Facebook Login
                    }
                    SocialButton(image: "link", text: "LinkedIn", color: .teal) {
                        // LinkedIn Login
                    }
                }
                
                Spacer()
                
                // Register
                HStack {
                    Text("Don’t have an account?")
                        .foregroundColor(.white.opacity(0.8))
                    Button("Sign Up") {
                        // Sign Up Navigation
                    }
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                }
            }
            .padding()
        }
    }
}

// MARK: - Social Button Component
struct SocialButton: View {
    var image: String
    var text: String
    var color: Color
    var action: () -> Void
    
    var body: some View {
        Button(action: action) {
            HStack {
                Image(systemName: image)
                    .font(.title2)
                Text(text)
                    .fontWeight(.medium)
            }
            .frame(maxWidth: .infinity)
            .padding()
            .background(Color.white.opacity(0.9))
            .cornerRadius(12)
            .foregroundColor(color)
        }
    }
}

#Preview {
    LoginView()
}
