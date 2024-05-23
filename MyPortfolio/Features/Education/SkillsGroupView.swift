//
//  SkillsGroupView.swift
//  MyPortfolio
//
//  Created by Hadia Jabran on 11/05/2024.
//

import SwiftUI

struct SkillsGroupView: View {
  let skillsList: [SkillItemModel]
  var body: some View {
    VStack(alignment: .leading) {
      HStack(alignment: .center) {
        Image(systemName: "gearshape.fill")
          .foregroundColor(.canvasTintDtl)
          .font(.system(size: 35))
        Text("My Skills")
          .font(.system(.title))
          .bold()
          .foregroundColor(.textColor)
        Spacer()
      }
      .padding(.bottom)
      VStack {
        ForEach(skillsList, id: \.self) { skilltem in
          SkillItemView(
            skillName: skilltem.skillName,
            skillValue: skilltem.skillValue)
        }
      }
      .padding(.all)
      .background(Color.monochromeMagic)
      .cornerRadius(25)
    }
    .padding(.all)
  }
}

struct SkillItemView: View {
  let skillName: String
  let skillValue: Int
  var body: some View {
    HStack {
      HStack {
        Spacer()
        Text(skillName)
          .font(.system(.subheadline))
          .bold()
          .foregroundColor(.textColor)
      }
      .frame(width: UIScreen.main.bounds.width/3)
      .padding(.trailing, 20)
      ForEach(Array(0..<5), id: \.self) { value in
          Image(systemName: "star.fill")
          .foregroundColor( value < skillValue ? .canvasTintDtl : .canvasTintDtl.opacity(0.4))
          .font(.system(size: 13))
      }
      Spacer()
    }
    .padding(.vertical, 5)
  }
}
