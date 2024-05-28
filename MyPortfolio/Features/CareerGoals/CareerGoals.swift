//
//  CareerGoals.swift
//  MyPortfolio
//
//  Created by Dev on 11/12/2023.
//

import SwiftUI
import Charts

struct CareerGoals: View {
  @StateObject var viewModel: CareerGoalsViewModel
  var body: some View {
    BaseUI { size in
      BackgroundUI(picture: "CareerGoalsPic", caption1: "My", caption2: "Goals", bottomPadding: size.height * 0.1)
      SheetView(sheetSize: size, sheetHeading: "Dreams to Reality 🚀", allowScroll: false) { size in
        VStack {
          ZStack {
            CurvedPathView(size: size)
            Points(size: size)
            Durations(size: size, durationsData: viewModel.data.durations)
            Aims(size: size, aimsData: viewModel.data.aims)
          }
        }
      }
    }
  }
}
