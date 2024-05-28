//
//  HireMeViewModel.swift
//  MyPortfolio
//
//  Created by Dev on 12/05/2024.
//

import Foundation

class HireMeViewModel: ObservableObject {
  @Published var data: [HireMeMenuModel]
  
  init() {
    self.data = HireMeMenuModel.mock()
  }
}
