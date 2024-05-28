//
//  AboutMeViewModel.swift
//  MyPortfolio
//
//  Created by Dev on 11/05/2024.
//

import Foundation

class AboutMeViewModel: ObservableObject {
  @Published var data: AboutMeModel
  
  init() {
    self.data = AboutMeModel.mock()
  }
}
