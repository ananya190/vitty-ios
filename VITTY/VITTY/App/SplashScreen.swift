//
//  SplashScreen.swift
//  VITTY
//
//  Created by Ananya George on 12/22/21.
//

import SwiftUI

struct SplashScreen: View {
    @State var selectedTab: Int = 0
    @State var onboardingComplete: Bool = false
    var body: some View {
        VStack {
            TabView(selection: $selectedTab){
                ForEach(0..<3) { _ in
                    SplashScreenIllustration(selectedTab: $selectedTab)
                }
            }
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
            SplashScreenTabIndicator(selectedTab: $selectedTab)
            Spacer(minLength: 50)
            NavigationLink(destination: LoginSignupView(), isActive: $onboardingComplete) {
                CustomButton(buttonText:"Get Started") {
                    onboardingComplete = true
                }
                .padding(.vertical)
            }
            Spacer(minLength: 50)
            
        }
        .padding()
        .background(Image((selectedTab % 2 == 0) ? "SplashScreen13BG" : "SplashScreen2BG").resizable().scaledToFill().edgesIgnoringSafeArea(.all))
    }
}

struct SplashScreen_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreen()
    }
}
