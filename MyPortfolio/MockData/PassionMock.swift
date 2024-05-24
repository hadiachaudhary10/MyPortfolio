//
//  PassionModelMock.swift
//  MyPortfolio
//
//  Created by Hadia Jabran on 11/05/2024.
//

import Foundation

extension PassionModel {
  static func mock() -> PassionModel {
    return PassionModel(
      imageName: "PassionsPic",
      myVersions: [
        MyVersionModel(
          imageName: "AdventurousGirl",
          descr: "I love taking a break from my usual routine when I'm feeling overwhelmed and going on a vacation to recharge myself. ❄️🤩"),
        MyVersionModel(
          imageName: "CatMom",
          descr: "I am fond of pets and thoroughly enjoy caring for my furry companion. 😻🫶"),
        MyVersionModel(
          imageName: "Wifey",
          descr: "I find solace in the company of my cherished ones, which invigorates and rejuvenates me. 🥺❤️")
      ]
    )
  }
}
