//
//  File.swift
//  MyPortfolio
//
//  Created by Hadia Jabran on 11/05/2024.
//

import Foundation

typealias Languages = [String: Float]

struct AboutMeModel {
  let imageName: String
  let firstName: String
  let whoAmI: String
  let whatAmILookingFor: String
  let myLocation: String
  let myLanguages: Languages
}
