//
//  DevViewModel.swift
//  MyPortfolio
//
//  Created by Hadia Jabran on 11/05/2024.
//

import Foundation

class DevViewModel: ObservableObject {
  @Published var data: DevModel
  
  init() {
    self.data = DevModel.mock()
  }
}
