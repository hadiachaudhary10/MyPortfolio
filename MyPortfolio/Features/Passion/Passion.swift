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
              ForEach(Array(viewModel.data.myVersions.enumerated()), id: \.element) { index, version in
              MyVersionView(
                imageName: version.imageName,
                description: version.descr,
                currentImageIndex: String(index + 1),
                totalImageCount: String(viewModel.data.myVersions.count)
              )
              .padding(.all, size.width * 0.1)
            }
          }
          .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
          .onAppear {
            setupAppearance()
          }
        }
      }
    }
  }
  func setupAppearance() {
    UIPageControl.appearance().currentPageIndicatorTintColor = UIColor(Color.canvasTintDtl)
    UIPageControl.appearance().pageIndicatorTintColor = UIColor(Color.canvasTintDtl).withAlphaComponent(0.2)
  }
}
