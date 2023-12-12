//
//  Color+Extensions.swift
//  MyPortfolio
//
//  Created by Dev on 11/12/2023.
//

import SwiftUI

extension Color {
  static let blueGrotto: Color = Color("BlueGrotto")
  static let babyBlue: Color = Color("BabyBlue")
  static let blue: Color = Color("Blue")
  static let navyBlue: Color = Color("NavyBlue")
}

extension Gradient {
  static let blueGrottoGradident: AnyGradient = Color("BlueGrotto").gradient
  static let babyBlueGradident: AnyGradient = Color("BabyBlue").gradient
  static let blueGradident: AnyGradient = Color("Blue").gradient
  static let navyBlueGradident: AnyGradient = Color("NavyBlue").gradient
}
