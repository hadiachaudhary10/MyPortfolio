//
//  CareerGoals.swift
//  MyPortfolio
//
//  Created by Dev on 11/12/2023.
//

import SwiftUI
import Charts

struct CareerGoals: View {
  var body: some View {
    BaseUI { size in
      BackgroundUI(picture: "CareerGoalsPic", caption1: "My", caption2: "Goals", bottomPadding: size.height * 0.1)
      SheetView(sheetSize: size, sheetHeading: "Dreams to Reality 🚀") { _ in
      }
    }
  }
}

struct CareerGoals_Previews: PreviewProvider {
  static var previews: some View {
    CareerGoals()
  }
}
