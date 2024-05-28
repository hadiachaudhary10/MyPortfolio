//
//  CareerGoalsViewModel.swift
//  MyPortfolio
//
//  Created by Dev on 23/05/2024.
//

import Foundation

class CareerGoalsViewModel: ObservableObject {
  @Published var data: CareerGoalsModel
  
  init() {
    self.data = CareerGoalsModel.mock()
  }
}
