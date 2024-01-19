//
//  AboutMe.swift
//  MyPortfolio
//
//  Created by Dev on 11/12/2023.
//

import SwiftUI

struct AboutMe: View {
  var body: some View {
    BaseUI { size in
      BackgroundUI(picture: "AboutMePic", caption1: "Hello,", caption2: "I am Hadia!", bottomPadding: size.height * 0.1)
      SheetView(sheetSize: size, sheetHeading: "About Me 🤔") { _ in
        TextQuestionView(question: "Who am I?",
                         answer: "Mobile Engineer with 2.5+ years in app development. Skilled in architecture, UI/UX, and performance. Analytical problem-solver meeting tight deadlines.")
        TextQuestionView(question: "What am I looking for?",
                         answer: "Seeking a role in a growth-oriented organization as an iOS Developer, eager to contribute technical skills, embrace challenges, and foster continuous learning.")
        TextLocationView(answer: "Wah Cantt, Pakistan")
      }
    }
  }
}

struct AboutMe_Previews: PreviewProvider {
  static var previews: some View {
    AboutMe()
  }
}
