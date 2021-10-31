//
//  Color.swift
//  Custom-Button
//
//  Created by ewerson on 30/10/21.
//

import SwiftUI

extension Color {
    static let theme = ColorTheme()
}

/// Usage theme color
/// ```
/// Color.theme.backgroundColor
/// ```
struct ColorTheme {
    let backgroundColor = Color("backgroundColor")
    let buttonColor = Color("buttonColor")
    let buttonBadge = Color("buttonBadge")
}
