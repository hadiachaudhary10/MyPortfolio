//
//  EducationModel.swift
//  MyPortfolio
//
//  Created by Hadia Jabran on 11/05/2024.
//

import Foundation

struct EducationModel {
  let imageName: String
  let educationsList: [EducationItemModel]
  let certificatesList: [CertificateItemModel]
  let skillsList: [SkillItemModel]
}

struct CertificateItemModel: Hashable {
  let certificateName: String
  let institutionName: String
  let issueDate: String
  let certificateProofEmail: String
}

struct EducationItemModel: Hashable {
  let institutionName: String
  let detailPoints: [String]
}

struct SkillItemModel: Hashable {
  let skillName: String
  let skillValue: Int
}
