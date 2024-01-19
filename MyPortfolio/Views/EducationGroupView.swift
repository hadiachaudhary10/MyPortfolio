//
//  EducationItemView.swift
//  MyPortfolio
//
//  Created by Dev on 20/01/2024.
//

import SwiftUI

struct EducationGroupView: View {
  var body: some View {
    VStack(alignment: .leading) {
      HStack {
        Image(systemName: "graduationcap.circle")
          .foregroundColor(.yellow)
          .font(.system(size: 40))
        Text("My education")
          .font(.system(.title))
          .bold()
          .foregroundColor(.black)
          .padding(.bottom)
        Spacer()
      }
      .padding(.bottom)
      EducationItemView(institutionName: "FAST-NUCES Islamabad", detailPoints: ["Graduated with a degree in Computer Science.", "Received Dean's List in eight semester."])
      EducationItemView(institutionName: "Roots International Schools", detailPoints: ["Completed A-Levels with outstanding medal.", "Received medal for global university acceptance."])
      EducationItemView(institutionName: "Roots International Schools", detailPoints: ["Completed O-Levels with Academic Excellence Award.", "Received certificate for outstanding performance."])
    }
    .padding(.all)
  }
}

struct EducationItemView_Previews: PreviewProvider {
  static var previews: some View {
    EducationGroupView()
  }
}

struct EducationItemView: View {
  var institutionName: String
  var detailPoints: [String]
  var body: some View {
    VStack(alignment: .leading) {
      Text(institutionName)
        .font(.system(.title3))
        .foregroundColor(.black)
        .bold()
        .padding(.bottom)
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
          .padding(.bottom)
        }
      }
    }
    .padding(.all)
  }
}
