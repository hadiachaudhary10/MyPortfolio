//
//  ExperienceViewModel.swift
//  MyPortfolio
//
//  Created by Dev on 11/05/2024.
//

import Foundation

class ExperienceViewModel: ObservableObject {
  @Published var data: ExperienceModel

  init() {
    self.data = ExperienceModel.mock()
  }
}
