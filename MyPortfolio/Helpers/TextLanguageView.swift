//
//  TextLanguageView.swift
//  MyPortfolio
//
//  Created by Dev on 19/01/2024.
//

import SwiftUI

struct TextLanguageView: View {
  @State var size: CGSize
  let languages: [String: Float]
  var body: some View {
    let proficiencyBarWidth = size.width * 0.8
    VStack(alignment: .leading) {
      Text("What languages do I speak?")
        .font(.system(.title3))
        .foregroundColor(.black)
        .padding(.leading)
      HStack {
        VStack {
          ForEach(languages.sorted(by: <), id: \.key) { key, value in
            VStack(alignment: .leading) {
              Text(key)
                .font(.system(.subheadline))
                .foregroundColor(.black)
              ZStack {
                HStack {
                  Capsule()
                    .fill(Color.secondary)
                    .frame(width: proficiencyBarWidth, height: 5)
                  Spacer()
                }
                HStack {
                  Capsule()
                    .fill(Color.pink)
                    .frame(width: proficiencyBarWidth * CGFloat(value), height: 5)
                  Spacer()
                }
              }
            }
            .padding(.vertical)
          }
        }
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

struct TextLanguageView_Previews: PreviewProvider {
  static var previews: some View {
    TextLanguageView(size: .zero, languages: [:])
  }
}
