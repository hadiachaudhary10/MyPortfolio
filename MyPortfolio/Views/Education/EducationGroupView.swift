//
//  EducationItemView.swift
//  MyPortfolio
//
//  Created by Dev on 20/01/2024.
//

import SwiftUI

struct EducationGroupView: View {
  let educationsList: [EducationItemModel]
  var body: some View {
    VStack(alignment: .leading) {
      HStack(alignment: .center) {
        Image(systemName: "graduationcap.fill")
          .foregroundColor(.canvasTintDtl)
          .font(.system(size: 35))
        Text("My education")
          .font(.system(.title))
          .bold()
          .foregroundColor(.textColor)
        Spacer()
      }
      .padding(.bottom)
      ForEach(educationsList, id: \.self) { educationItem in
        EducationItemView(institutionName: educationItem.institutionName, detailPoints: educationItem.detailPoints)
      }
    }
    .padding(.all)
  }
}

struct EducationItemView: View {
  let institutionName: String
  let detailPoints: [String]
  var body: some View {
    VStack(alignment: .leading) {
      Text(institutionName)
        .font(.title3)
        .foregroundColor(.textColor)
        .bold()
        .padding(.bottom)
      VStack(alignment: .leading) {
        ForEach(detailPoints, id: \.self) { item in
          HStack {
            Image(systemName: "circle.fill")
              .font(.system(size: 6))
              .foregroundColor(.textColor)
            Text(item)
              .foregroundColor(.textColor.opacity(0.6))
              .font(.caption)
          }
          .padding(.bottom, 3)
        }
      }
    }
    .padding(.all)
  }
}
