//
//  PassionModel.swift
//  MyPortfolio
//
//  Created by Dev 11/05/2024.
//

import Foundation

struct PassionModel {
  let imageName: String
  let myVersions: [MyVersionModel]
}

struct MyVersionModel: Hashable {
  let imageName: String
  let descr: String
}
