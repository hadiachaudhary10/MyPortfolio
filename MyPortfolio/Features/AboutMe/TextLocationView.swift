//
//  TextLocationView.swift
//  MyPortfolio
//
//  Created by Dev on 19/01/2024.
//

import SwiftUI

struct TextLocationView: View {
  let answer: String
  var body: some View {
    VStack(alignment: .leading) {
      Text("Where do I live?")
        .font(.system(.title3))
        .foregroundColor(.textColor)
        .padding(.leading)
      HStack {
        Image(systemName: "mappin.and.ellipse")
          .foregroundColor(.textColor)
        Text(answer)
          .font(.system(.caption))
          .foregroundColor(.textColor)
        Spacer()
      }
      .padding(.all)
      .background(Color.monochromeMagic)
      .cornerRadius(15)
      .padding(.horizontal)
    }
    .padding(.vertical, 10)
  }
}
