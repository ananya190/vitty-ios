//
//  CustomButton.swift
//  VITTY
//
//  Created by Ananya George on 12/22/21.
//

import SwiftUI

struct CustomButton: View {
    @State var buttonText: String = "Continue"
    var bgroundColor: Color = Color.secondary
    var fgroundColor: Color = Color.white
    var cornerRad: CGFloat = 10.0
    var minLength: CGFloat = 20
    var action: () -> Void = {}
    var body: some View {
        HStack(spacing:0) {
            Button(action: action) {
                HStack {
                    Spacer()
                    Text(buttonText)
                        .font(Font.custom("Poppins-SemiBold",size:18))
                        .lineLimit(1)
                        .minimumScaleFactor(0.3)
                        .padding(.vertical,12)
                    Spacer()
                }
                .foregroundColor(fgroundColor)
                .background(bgroundColor)
                .cornerRadius(cornerRad)
            }
        }
    }
}

struct CustomButton_Previews: PreviewProvider {
    static var previews: some View {
        CustomButton()
    }
}
