//
//  ExperienceMock.swift
//  MyPortfolio
//
//  Created by Hadia Jabran on 11/05/2024.
//

import Foundation

struct ExperienceModel {
  let imageName: String
  let experiencesList: [ExperienceItemModel]
}

struct ExperienceItemModel: Hashable {
  let position: String
  let locAndDur: String
  let detailPoints: [String]
}
