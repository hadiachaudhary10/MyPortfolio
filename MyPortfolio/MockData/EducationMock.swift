//
//  EducationMock.swift
//  MyPortfolio
//
//  Created by Hadia Jabran on 11/05/2024.
//

import Foundation

extension EducationModel {
  static func mock() -> EducationModel {
      return EducationModel(
        imageName: "EducationPic",
        educationsList: [
          EducationItemModel(
            institutionName: "FAST-NUCES Islamabad",
            detailPoints: [
              "Graduated with a degree in Computer Science.",
               "Received Dean's List in eight semester."
            ]),
          EducationItemModel(
            institutionName: "Roots International Schools",
            detailPoints: [
              "Completed A-Levels with outstanding medal.",
              "Received medal for global university acceptance."
            ]),
          EducationItemModel(
            institutionName:
              "Roots International Schools",
               detailPoints: [
                "Completed O-Levels with Academic Excellence Award.",
                "Received certificate for outstanding performance."
               ])
        ],
        certificatesList: [
          CertificateItemModel(
            certificateName: "Introduction to iOS Development",
            institutionName: "Meta - Coursera",
            issueDate: "March 2024",
            certificateProofEmail: Constant.INTRO_TO_iOS_DEVELOPMENT
          ),
          CertificateItemModel(
            certificateName: "iOS App Capstone",
            institutionName: "Meta - Coursera",
            issueDate: "July 2023",
            certificateProofEmail: Constant.iOS_APP_CAPSTONE
          ),
          CertificateItemModel(
            certificateName: "Foundations of UX Design",
            institutionName: "Google - Coursera",
            issueDate: "March 2024",
            certificateProofEmail: Constant.FOUNDATIONS_OF_UX
          ),
          CertificateItemModel(
            certificateName: "Jira Fundamentals Badge",
            institutionName: "Atlassian",
            issueDate: "July 2023",
            certificateProofEmail: Constant.JIRA_FUNDAMENTALS_BADGE
          ),
          CertificateItemModel(
            certificateName: "Introduction to Cybersecurity",
            institutionName: "Cisco",
            issueDate: "July 2023",
            certificateProofEmail: Constant.INTRO_TO_CYBERSECURITY
          ),
          CertificateItemModel(
            certificateName: "Crash Course on Python",
            institutionName: "Google - Coursera",
            issueDate: "July 2023",
            certificateProofEmail: Constant.CRASH_COURSE_ON_PYTHON
          )
        ],
        skillsList: [
          SkillItemModel(skillName: "APIs", skillValue: 4),
          SkillItemModel(skillName: "Cocoapods", skillValue: 4),
          SkillItemModel(skillName: "SPM", skillValue: 5),
          SkillItemModel(skillName: "CoreData", skillValue: 3),
          SkillItemModel(skillName: "Realm", skillValue: 4),
          SkillItemModel(skillName: "Firebase", skillValue: 4),
          SkillItemModel(skillName: "Git", skillValue: 4),
          SkillItemModel(skillName: "Github", skillValue: 4),
          SkillItemModel(skillName: "iOS Animations", skillValue: 3),
          SkillItemModel(skillName: "JSON", skillValue: 4),
          SkillItemModel(skillName: "MVC", skillValue: 5),
          SkillItemModel(skillName: "MVVM", skillValue: 5),
          SkillItemModel(skillName: "Swift", skillValue: 5),
          SkillItemModel(skillName: "SwiftUI", skillValue: 5),
          SkillItemModel(skillName: "UIKit", skillValue: 4),
          SkillItemModel(skillName: "Objective-C", skillValue: 3),
          SkillItemModel(skillName: "UI/UX Designer", skillValue: 4)
        ])
  }
}
