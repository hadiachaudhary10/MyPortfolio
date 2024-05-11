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
          imageName: "CatMom",
          descr: "As Simba's cat mom, my world revolves around whiskers, warmth, and a whole lot of love. 😻🫶"),
        MyVersionModel(
          imageName: "Wifey",
          descr: "I love my husband, but also love annoying him forever. It's our special bond. 👫❤️"),
        MyVersionModel(
          imageName: "AdventurousGirl",
          descr: "Winters, snow, and travel? My favorites. The chill, the snow—it's magical. ❄️🤩")
      ])
  }
}
