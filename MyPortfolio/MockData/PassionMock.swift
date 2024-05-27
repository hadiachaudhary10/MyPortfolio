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
          imageName: "Version1",
          descr: "I love taking a break from my usual routine when I'm feeling overwhelmed and going on a vacation to recharge myself. ❄️🤩"),
        MyVersionModel(
          imageName: "Version2",
          descr: "I enjoy creating apps that are impactful for users and simplify their lives. 👩🏻‍💻✨"),
        MyVersionModel(
          imageName: "Version3",
          descr: "I am fond of pets and thoroughly enjoy caring for my furry companion. 😻🫶"),
        MyVersionModel(
          imageName: "Version4",
          descr: "I find solace in the company of my cherished ones, which invigorates and rejuvenates me. 🥺❤️"),
        MyVersionModel(
          imageName: "Version5",
          descr: "In my pursuits of baking and coding, I strive for perfection to achieve the desired results. 🧁👩🏻‍🍳")
      ]
    )
  }
}
