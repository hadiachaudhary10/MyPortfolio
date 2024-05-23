//
//  MyVersionView.swift
//  MyPortfolio
//
//  Created by Hadia Jabran on 11/05/2024.
//

import SwiftUI

struct MyVersionView: View {
  var imageName: String
  var description: String
  var body: some View {
    VStack {
      Image(imageName)
        .resizable()
        .cornerRadius(10)
        .padding(.bottom, 10)
      Text(description)
        .font(.caption2)
        .multilineTextAlignment(.leading)
        .foregroundColor(.textColor)
    }
    .padding(.all)
    .background(Color.monochromeMagic)
    .cornerRadius(10)
    .padding(.horizontal)
  }
}
