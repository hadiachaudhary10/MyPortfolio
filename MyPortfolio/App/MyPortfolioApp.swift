//
//  MyPortfolioApp.swift
//  MyPortfolio
//
//  Created by Dev on 11/12/2023.
//

import SwiftUI

@main
struct MyPortfolioApp: App {
  var body: some Scene {
    WindowGroup {
      SplashScreen(viewModel: SplashScreenViewModel())
    }
  }
}
