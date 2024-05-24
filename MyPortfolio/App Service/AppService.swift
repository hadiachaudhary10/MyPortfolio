//
//  Service.swift
//  MyPortfolio
//
//  Created by Hadia Jabran on 11/05/2024.
//

import UIKit

class AppService: ObservableObject {
  static let shared = AppService()
  @Published var showHireButtonInBackground: Bool = true
    func openURL(urlString: String) {
      if let url = URL(string: urlString) {
        if UIApplication.shared.canOpenURL(url) {
          UIApplication.shared.open(url)
        } else {
          print("Unable to open URL \(url).")
        }
      }
    }
}
