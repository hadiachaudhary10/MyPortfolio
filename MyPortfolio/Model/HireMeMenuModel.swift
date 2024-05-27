//
//  ContactMeModel.swift
//  MyPortfolio
//
//  Created by Dev on 12/05/2024.
//

import Foundation

enum ContactAction {
  case copy
  case sendEmail
  case callNumber
}

struct HireMeMenuModel: Hashable {
  let name: String
  let imageName: String
  let data: String?
  let subItem: [ContactMeOptionsModel]?
}

struct ContactMeOptionsModel: Hashable {
  let name: String
  let data: String
  let type: ContactAction
}
