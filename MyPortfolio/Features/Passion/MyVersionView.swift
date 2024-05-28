//
//  MyVersionView.swift
//  MyPortfolio
//
//  Created by Dev on 11/05/2024.
//

import SwiftUI

struct MyVersionView: View {
  var imageName: String
  var description: String
  var currentImageIndex: String
  var totalImageCount: String
  var body: some View {
    VStack {
      Image(imageName)
        .resizable()
        .scaledToFit()
        .cornerRadius(10)
        .padding(.bottom, 10)
      Text(description)
        .font(.caption2)
        .multilineTextAlignment(.leading)
        .foregroundColor(.textColor)
      HStack {
        Spacer()
        Text(currentImageIndex + "/" + totalImageCount)
          .font(.caption2.bold())
          .foregroundStyle(Color.canvasTintDtl)
      }
    }
    .padding(.all)
    .background(Color.monochromeMagic)
    .cornerRadius(10)
    .padding(.horizontal)
  }
}
