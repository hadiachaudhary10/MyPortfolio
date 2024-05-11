//
//  AboutMe.swift
//  MyPortfolio
//
//  Created by Dev on 11/12/2023.
//

import SwiftUI

struct AboutMe: View {
  @StateObject var viewModel: AboutMeViewModel
  var body: some View {
    BaseUI { size in
      BackgroundUI(picture: viewModel.data.imageName, caption1: "Hello,", caption2: "I am \(viewModel.data.firstName)!", bottomPadding: size.height * 0.1)
      SheetView(sheetSize: size, sheetHeading: "About Me 🤔") { size in
        TextQuestionView(question: "Who am I?",
                         answer: viewModel.data.whoAmI)
        TextQuestionView(question: "What am I looking for?",
                         answer: viewModel.data.whatAmILookingFor)
        TextLanguageView(size: size, languages: viewModel.data.myLanguages)
        TextLocationView(answer: viewModel.data.myLocation)
      }
    }
  }
}
