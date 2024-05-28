//
//  ExperienceMock.swift
//  MyPortfolio
//
//  Created by Dev on 11/05/2024.
//

import Foundation

extension ExperienceModel {
  static func mock() -> ExperienceModel {
    return ExperienceModel(
      imageName: "ExperiencePic",
      experiencesList: [
        ExperienceItemModel(
          position: "Software Engineer",
          locAndDur: "Devsinc, US, Jul 2023 - Present",
          detailPoints: [
            "Executed robust API integrations.",
            "Mentored junior Swift developers.",
            "Enabled efficient project execution."
          ]),
        ExperienceItemModel(
          position: "Associate Software Engineer",
          locAndDur: "Devsinc, US, Jul 2022 - Jul 2023",
          detailPoints: [
            "Applied Agile for Optimization.",
            "Generated streamlined, documented code.",
            "Performed robust testing and debugging."
          ]),
        ExperienceItemModel(
          position: "Teacher Assistant",
          locAndDur: "NUCES, Islamabad, PK, Mar 2021 - Jul 2022",
          detailPoints: [
            "For COAL, DS & NLP.",
            "Handled student queries.",
            "Evaluated their assignments"
          ])
      ])
  }
}
