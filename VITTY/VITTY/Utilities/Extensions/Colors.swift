//
//  Colors.swift
//  VITTY
//
//  Created by Ananya George on 12/22/21.
//

import SwiftUI

extension Color {
    static let darkbg = Color(UIColor(named: ColorConstants.darkbg.rawValue)!)
    static let vprimary = Color(UIColor(named: ColorConstants.vprimary.rawValue)!)
    static let secondary = Color(UIColor(named: ColorConstants.secondary.rawValue)!)
    
    enum ColorConstants: String {
        case darkbg = "DarkBG"
        case vprimary = "Primary"
        case secondary = "Secondary"
    }
}
