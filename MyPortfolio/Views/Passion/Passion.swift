//
//  Passions.swift
//  MyPortfolio
//
//  Created by Dev on 11/12/2023.
//

import SwiftUI

struct Passion: View {
  @StateObject var viewModel: PassionViewModel
  var body: some View {
    BaseUI { size in
      BackgroundUI(picture: viewModel.data.imageName, caption1: "My", caption2: "Passions", bottomPadding: size.height * 0.1)
      SheetView(sheetSize: size, sheetHeading: "Versions of me 😁", allowScroll: false) { size in
        VStack {
          TabView {
            ForEach(viewModel.data.myVersions, id: \.self) { version in
              MyVersionView(
                imageName: version.imageName,
                description: version.descr
              )
              .frame(height: size.height * 0.75)
            }
          }
          .frame(width: size.width * 0.9, height: size.height * 0.85)
          .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
          .onAppear {
            setupAppearance()
          }
          Spacer()
        }
      }
    }
  }
  func setupAppearance() {
    UIPageControl.appearance().currentPageIndicatorTintColor = UIColor(Color.canvasTintDtl)
    UIPageControl.appearance().pageIndicatorTintColor = UIColor(Color.canvasTintDtl).withAlphaComponent(0.2)
  }
}
