//
//  DevViewModel.swift
//  MyPortfolio
//
//  Created by Dev on 11/05/2024.
//

import Foundation

class SplashScreenViewModel: ObservableObject {
  @Published var data: SplashScreenModel

  init() {
    self.data = SplashScreenModel.mock()
  }
}
