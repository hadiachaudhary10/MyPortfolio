//
//  ContactMeMock.swift
//  MyPortfolio
//
//  Created by Dev on 12/05/2024.
//

import Foundation

extension HireMeMenuModel {
  static func mock() -> [HireMeMenuModel] {
    return [
      HireMeMenuModel(
        name: "Email",
        imageName: "envelope",
        data: nil,
        subItem: [
          ContactMeOptionsModel(
            name: "Copy Email",
            data: Constant.MY_EMAIL,
            type: .copy
          ),
          ContactMeOptionsModel(
            name: "Send Email",
            data: Constant.MY_EMAIL,
            type: .sendEmail
          )
        ]),
      HireMeMenuModel(
        name: "Phone Number",
        imageName: "phone",
        data: nil,
        subItem: [
          ContactMeOptionsModel(
            name: "Copy Number",
            data: Constant.MY_Number,
            type: .copy
          ),
          ContactMeOptionsModel(
            name: "Call Me",
            data: Constant.MY_Number,
            type: .callNumber
          )
        ]),
      HireMeMenuModel(
        name: "Linkedin",
        imageName: "person",
        data: Constant.LINKEDIN_PROFILE,
        subItem: nil
      ),
      HireMeMenuModel(
        name: "Github",
        imageName: "ellipsis.curlybraces",
        data: Constant.GITHUB_PROFILE,
        subItem: nil
      )
    ]
  }
}
