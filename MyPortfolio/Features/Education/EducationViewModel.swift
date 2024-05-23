//
//  EducationViewModel.swift
//  MyPortfolio
//
//  Created by Hadia Jabran on 11/05/2024.
//

import Foundation

class EducationViewModel: ObservableObject {
  @Published var data: EducationModel

  init() {
    self.data = EducationModel.mock()
  }
}
