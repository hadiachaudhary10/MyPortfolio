//
//  DevViewModel.swift
//  MyPortfolio
//
//  Created by Hadia Jabran on 11/05/2024.
//

import Foundation

class SplashScreenViewModel: ObservableObject {
  @Published var data: SplashScreenModel

  init() {
    self.data = SplashScreenModel.mock()
  }
}
