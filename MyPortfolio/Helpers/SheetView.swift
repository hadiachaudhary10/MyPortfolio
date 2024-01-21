//
//  SheetView.swift
//  MyPortfolio
//
//  Created by Dev on 29/12/2023.
//

import SwiftUI

struct SheetView<ContentView: View>: View {
  @State private var size: CGSize
  @State private var heading: String
  @State private var showSheet: Bool = false
  var content: (CGSize) -> ContentView
  init(sheetSize: CGSize, sheetHeading: String, @ViewBuilder content: @escaping(CGSize) -> ContentView) {
    self.content = content
    self._size = State(initialValue: sheetSize)
    self._heading = State(initialValue: sheetHeading)
  }
  var body: some View {
    VStack {
      Spacer()
      VStack {
        VStack {
          Capsule()
            .fill(Color.secondary)
            .frame(width: 30, height: 3)
            .padding(.top, 10)
          HStack {
            Text(heading)
              .font(.custom("Nunito-Bold", size: 20, relativeTo: .title))
              .foregroundColor(.black)
              .padding(.leading)
            Spacer()
          }
        }
        .gesture(DragGesture()
          .onEnded { _ in
            withAnimation(.linear(duration: 0.5)) {
              showSheet = showSheet ? false : true
            }
          }
        )
        if showSheet {
          ScrollView {
            content(size)
          }
        }
        Spacer()
      }
      .frame(width: size.width, height: showSheet ? size.height : size.height * 0.1)
      .background(Gradient.sheetGradient)
      .cornerRadius(25, corners: [.topRight, .topLeft])
    }
    .frame(width: size.width, height: size.height)
  }
}
