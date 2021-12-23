//
//  LoginSignupView.swift
//  VITTY
//
//  Created by Ananya George on 12/22/21.
//

import SwiftUI

struct LoginSignupView: View {
    @State var isLogin: Bool = true
    @State var username: String = ""
    @State var password: String = ""
    @State var verifyPwd: String = ""
    @State var emailId: String = ""
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                Spacer(minLength: 100)
                Text(isLogin ? "Welcome Back!" : "New Here?")
                    .font(Font.custom("Poppins-SemiBold",size:30))
                    .foregroundColor(Color.white)
                    .padding(.horizontal)
                Text(isLogin ? "Login to continue" : "Let's get your credentials")
                    .font(Font.custom("Poppins-Regular",size:16))
                    .foregroundColor(Color.vprimary)
                    .padding(.horizontal)
                CustomTextField(textFieldText: $username, tfString: "Username", imageName: "user")
                CustomSecureField(secureFieldText: $password, sfString: "Password", imageName: "unlock")
                VStack(alignment: .center) {
                    if isLogin {
                        NavigationLink(destination: SplashScreen(), label: {
                            VStack(alignment:.center) {
                                Text("Forgot Password?")
                                    .font(Font.custom("Poppins-Regular", size: 12))
                                    .foregroundColor(Color.white)
                            }
                        })
                        CustomButton(buttonText: "Login") {
                            // authvm
                        }
                        .padding(.horizontal)
                        SignupOR()
                            .padding()
                        CustomButton(buttonText: "Sign in with Google Button") {
                            // google sign in auth vm
                        }
                        .padding(.horizontal)
                        CustomButton(buttonText: "Sign in with Apple Button") {
                            // apple sign in auth vm
                        }
                        .padding(.horizontal)
                        
                    } else {
                        CustomSecureField(secureFieldText: $verifyPwd, sfString: "Repeat Password", imageName: "unlock")
                        CustomTextField(textFieldText: $emailId, tfString: "Email Id", imageName: "user")
                        CustomButton(buttonText: "Register") {
                            // authvm
                        }
                        .padding(.horizontal)
                    }
                    HStack(spacing: 0) {
                        Text(isLogin ? "If you are new / " : "Already have an account? / ")
                            .foregroundColor(Color.vprimary)
                            .font(Font.custom("Poppins-Regular",size: 16))
                        Button(action: { isLogin.toggle() }) {
                            Text(isLogin ? "Create New" : "Log In")
                                .foregroundColor(Color.white)
                                .font(Font.custom("Poppins-Medium",size: 16))
                        }
                    }
                    .padding()
                }
            }
            
        }
        .padding()
        .background(Image("LoginSignupBG").resizable().scaledToFill().edgesIgnoringSafeArea(.all))
        .navigationBarHidden(true)
    }
}

struct LoginSignupView_Previews: PreviewProvider {
    static var previews: some View {
        LoginSignupView()
    }
}
