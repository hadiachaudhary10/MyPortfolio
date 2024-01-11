//
//  BaseUI.swift
//  MyPortfolio
//
//  Created by Dev on 29/12/2023.
//

import SwiftUI

struct BaseUI<ContentView: View>: View {
  var content: (CGSize) -> ContentView
  init(@ViewBuilder content: @escaping(CGSize) -> ContentView) {
    self.content = content
  }
  var body: some View {
    GeometryReader { geo in
      ZStack {
        content(geo.size)
      }
      .frame(width: geo.size.width, height: geo.size.height)
    }
  }
}
