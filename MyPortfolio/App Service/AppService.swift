//
//  Service.swift
//  MyPortfolio
//
//  Created by Hadia Jabran on 11/05/2024.
//

import Foundation

class AppService: ObservableObject {
  static let shared = AppService()
  @Published var showHireButtonInBackground: Bool = true
}
