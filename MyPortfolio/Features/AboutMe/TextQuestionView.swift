//
//  QuestionView.swift
//  MyPortfolio
//
//  Created by Dev on 11/01/2024.
//

import SwiftUI

struct TextQuestionView: View {
  let question: String
  let answer: String
  var body: some View {
    VStack(alignment: .leading) {
      Text(question)
        .font(.system(.title3))
        .foregroundColor(.textColor)
        .padding(.leading)
      HStack {
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
    .padding(.vertical)
  }
}

struct TextQuestionView_Previews: PreviewProvider {
  static var previews: some View {
    TextQuestionView(question: "", answer: "")
  }
}
