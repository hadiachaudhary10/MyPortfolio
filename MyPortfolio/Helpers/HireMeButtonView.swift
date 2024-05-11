//
//  HireMeButtonView.swift
//  MyPortfolio
//
//  Created by Hadia Jabran on 06/05/2024.
//

import SwiftUI

struct HireMeButtonView: View {
    var body: some View {
        Button {} label: {
          Text("Hire Me")
            .fontWeight(.heavy)
            .padding(.horizontal)
            .foregroundColor(Color.hireMeTextDTL)
        }
        .padding(.all, 10)
        .background(Color.hireMeTextLTD)
        .cornerRadius(25)
        .padding(.trailing)
    }
}
