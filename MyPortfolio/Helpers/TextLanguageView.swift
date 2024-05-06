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
  @State private var animationsList: [Bool] = []
  @State private var setAnimations: Bool = false
  var body: some View {
    let proficiencyBarWidth = size.width * 0.8
    let sortedLanguages = Array(languages).sorted { $0.value > $1.value }
    VStack(alignment: .leading) {
      Text("What languages do I speak?")
        .font(.system(.title3))
        .foregroundColor(.black)
        .padding(.leading)
      HStack {
        VStack {
          ForEach(Array(sortedLanguages.enumerated()), id: \.offset) { index, dict in
           let key = dict.key
           let value = dict.value
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
                  if setAnimations {
                    Capsule()
                      .fill(Color.pink)
                      .frame(
                        width: animationsList[index] ? (proficiencyBarWidth * CGFloat(value)) : 0,
                           height: 5
                       )
                  }
                  Spacer()
                }
              }
            }
            .padding(.vertical)
          }
        }
        Spacer()
      }
      .onAppear {
        if !setAnimations {
            animationsList = Array(repeating: false, count: languages.count)
            setAnimations = true
            for i in animationsList.indices {
              DispatchQueue.main.asyncAfter(deadline: .now() + Double(i)) {
                withAnimation(.linear(duration: 0.5)) {
                  animationsList[i] = true
                }
              }
            }
        }
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
