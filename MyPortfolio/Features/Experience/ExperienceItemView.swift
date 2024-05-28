//
//  ExperienceView.swift
//  MyPortfolio
//
//  Created by Dev on 20/01/2024.
//

import SwiftUI

struct ExperienceItemView: View {
  var position: String
  var locAndDur: String
  var detailPoints: [String]
  @State var size: CGSize
  var body: some View {
    VStack {
      HStack {
        Capsule()
          .fill(Color.canvasTintDtl)
          .frame(width: 5, height: size.height * 0.2)
        VStack(alignment: .leading) {
          Text(position)
            .font(.system(.title2))
            .bold()
            .foregroundColor(.textColor)
          Text(locAndDur)
            .font(.system(.subheadline))
            .foregroundColor(.textColor)
            .padding(.bottom, 3)
          VStack(alignment: .leading) {
            ForEach(detailPoints, id: \.self) { item in
              HStack {
                Image(systemName: "circle.fill")
                  .font(.system(size: 8))
                  .foregroundColor(.canvasTintDtl)
                Text(item)
                  .foregroundColor(.textColor)
                  .font(.caption)
              }
              .padding(.all, 2)
            }
          }
          .padding(.trailing)
        }
        .padding(.leading)
        Spacer()
      }
      .padding(.all)
      .background(Color.monochromeMagic)
      .cornerRadius(15)
      .padding(.horizontal)
    }
    .padding(.vertical)
  }
}
