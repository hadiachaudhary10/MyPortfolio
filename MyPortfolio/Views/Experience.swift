//
//  Experience.swift
//  MyPortfolio
//
//  Created by Dev on 11/12/2023.
//

import SwiftUI

struct Experience: View {
  var body: some View {
    BaseUI { size in
      BackgroundUI(picture: "ExperiencePic", caption1: "My", caption2: "Experience", bottomPadding: size.height * 0.1)
      SheetView(sheetSize: size, sheetHeading: "Professional Path 👩🏻‍💻") { size in
        ExperienceItemView(
          position: "Software Engineer",
          locAndDur: "Devsinc, US, Jul 2023 - Present",
          detailPoints: ["Executed robust API integrations.", "Mentored junior Swift developers.", "Enabled efficient project execution."],
          size: size)
        ExperienceItemView(
          position: "Associate Software Engineer",
          locAndDur: "Devsinc, US, Jul 2022 - Jul 2023",
          detailPoints: ["Applied Agile for Optimization.", "Generated streamlined, documented code.", "Performed robust testing and debugging."],
          size: size)
        ExperienceItemView(
          position: "Teacher Assistant",
          locAndDur: "NUCES, Islamabad, PK, Mar 2021 - Jul 2022",
          detailPoints: ["For COAL, DS & NLP.", "Handled student queries.", "Evaluated their assignments"],
          size: size)
      }
    }
  }
}

struct Experience_Previews: PreviewProvider {
  static var previews: some View {
    Experience()
  }
}
