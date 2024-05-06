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
          .fill(Color.pink)
          .frame(width: 5, height: size.height * 0.2)
        VStack(alignment: .leading) {
          Text(position)
            .font(.system(.title2))
            .bold()
            .foregroundColor(.black)
          Text(locAndDur)
            .font(.system(.subheadline))
            .foregroundColor(.black)
            .padding(.bottom, 3)
          VStack(alignment: .leading) {
            ForEach(detailPoints, id: \.self) { item in
              HStack {
                Image(systemName: "circle.fill")
                  .font(.system(size: 8))
                  .foregroundColor(.black)
                Text(item)
                  .foregroundColor(.black)
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
      .background(Color.white)
      .cornerRadius(15)
      .padding(.horizontal)
    }
    .padding(.vertical)
  }
}

struct ExperienceView_Previews: PreviewProvider {
  static var previews: some View {
    ExperienceItemView(position: "", locAndDur: "", detailPoints: [], size: .zero)
  }
}
