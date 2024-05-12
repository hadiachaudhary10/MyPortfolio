//
//  Education.swift
//  MyPortfolio
//
//  Created by Dev on 11/12/2023.
//

import SwiftUI

struct Education: View {
  @StateObject var viewModel: EducationViewModel
  var body: some View {
    BaseUI { size in
      BackgroundUI(picture: "EducationPic", caption1: "My", caption2: "Education", bottomPadding: size.height * 0.1)
      SheetView(sheetSize: size, sheetHeading: "Scroll up to discover 📚") { _ in
        EducationGroupView(educationsList: viewModel.data.educationsList)
        CertificatesGroupView(certificatesList: viewModel.data.certificatesList)
        SkillsGroupView(skillsList: viewModel.data.skillsList)
      }
    }
  }
}
