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
  @State private var allowScroll: Bool
  var content: (CGSize) -> ContentView
  init(sheetSize: CGSize, sheetHeading: String, allowScroll: Bool = true, @ViewBuilder content: @escaping(CGSize) -> ContentView) {
    self.content = content
    self.allowScroll = allowScroll
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
              .foregroundColor(.textColor)
              .padding(.leading)
            Spacer()
            if showSheet {
                  HireMeButtonView()
            }
          }
        }
        .contentShape(Rectangle())
        .gesture(DragGesture()
          .onEnded { _ in
            withAnimation(.easeInOut(duration: 0.5)) {
              showSheet = showSheet ? false : true
              AppService.shared.showHireButtonInBackground = showSheet ? false : true
            }
          }
        )
        if showSheet {
          if allowScroll {
            ScrollView {
              content(size)
            }
          } else {
            content(size)
          }
        }
        Spacer()
      }
      .frame(width: size.width, height: showSheet ? size.height : size.height * 0.1)
      .background(Color.sheetColor)
      .cornerRadius(25, corners: [.topRight, .topLeft])
    }
    .frame(width: size.width, height: size.height)
  }
}
