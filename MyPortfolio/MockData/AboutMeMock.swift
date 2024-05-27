//
//  File.swift
//  MyPortfolio
//
//  Created by Dev on 11/05/2024.
//

import Foundation

extension AboutMeModel {
  static func mock() -> AboutMeModel {
    return AboutMeModel(
      imageName: "AboutMePic",
      firstName: "Hadia",
      whoAmI: "Mobile Engineer with 2.5+ years in app development. Skilled in architecture, UI/UX, and performance. Analytical problem-solver meeting tight deadlines.",
      whatAmILookingFor: "Seeking a role in a growth-oriented organization as an iOS Developer, eager to contribute technical skills, embrace challenges, and foster continuous learning.",
      myLocation: "Wah Cantt, Pakistan",
      myLanguages: ["English": 0.9, "Urdu": 1]
    )
  }
}
