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
        ],
        projectsList: [
            ProjectItemModel(
                projectName: "SweetTreatsGuide",
                projectDescription: "The app retrieves a list of desserts from an API endpoint and displays them. When a dessert is selected, a detailed screen shows its ingredients and instructions. Additionally, if available, a YouTube video is displayed on the detailed screen.",
                technologiesUsed: "Swift, SwiftUI, API Integration",
                demoVideoName: "SweetTreatsGuideDemo",
                projectGithubURL: "https://github.com/hadiachaudhary10/SweetTreatsGuide"
            ),
            ProjectItemModel(
                projectName: "BlockbusterVault",
                projectDescription: "The app displays a grid of popular movies fetched from a designated endpoint. When a movie is selected, it navigates to a detailed view that provides information such as the movie's overview, rating, genres, release date, and production companies.",
                technologiesUsed: "Swift, SwiftUI, MVVM Architecture, API Integration",
                demoVideoName: "BlockBusterVaultDemo",
                projectGithubURL: "https://github.com/hadiachaudhary10/BlockbusterVault"
            ),
            ProjectItemModel(
                projectName: "LittleLemon",
                projectDescription: "The app lets users register or sign in, view a brief restaurant introduction, search for menu items, navigate through categories, browse items fetched from an endpoint, update personal details, and log out.",
                technologiesUsed: "SwiftUI, Core Data, Google Fonts",
                demoVideoName: "SweetTreatsGuideDemo",
                projectGithubURL: "https://github.com/hadiachaudhary10/littlelemon"
            )
        ]
      )
  }
}
