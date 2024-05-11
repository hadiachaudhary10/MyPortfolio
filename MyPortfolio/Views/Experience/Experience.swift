//
//  Experience.swift
//  MyPortfolio
//
//  Created by Dev on 11/12/2023.
//

import SwiftUI

struct Experience: View {
  @StateObject var viewModel: ExperienceViewModel
  var body: some View {
    BaseUI { size in
      BackgroundUI(picture: viewModel.data.imageName, caption1: "My", caption2: "Experience", bottomPadding: size.height * 0.1)
      SheetView(sheetSize: size, sheetHeading: "Professional Path 👩🏻‍💻") { size in
        ForEach(viewModel.data.experiencesList, id: \.self) { experience in
          ExperienceItemView(
            position: experience.position,
            locAndDur: experience.locAndDur,
            detailPoints: experience.detailPoints,
            size: size)
        }
      }
    }
  }
}
