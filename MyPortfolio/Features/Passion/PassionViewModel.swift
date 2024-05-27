//
//  PassionViewModel.swift
//  MyPortfolio
//
//  Created by Dev on 11/05/2024.
//

import Foundation

class PassionViewModel: ObservableObject {
  @Published var data: PassionModel

  init() {
    self.data = PassionModel.mock()
  }
}
