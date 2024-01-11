//
//  SheetView.swift
//  MyPortfolio
//
//  Created by Dev on 29/12/2023.
//

import SwiftUI

struct SheetView: View {
  @State var size: CGSize
  @State var heading: String
  @State var showSheet: Bool = false
  var body: some View {
    VStack {
      Spacer()
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
        Spacer()
      }
      .frame(width: size.width, height: showSheet ? size.height * 0.9 : size.height * 0.1)
      .background(Gradient.sheetGradient)
      .cornerRadius(25, corners: [.topRight, .topLeft])
    }
    .frame(width: size.width, height: size.height)
    .gesture(DragGesture()
      .onEnded { _ in
        withAnimation(.linear(duration: 0.5)) {
          showSheet = showSheet ? false : true
        }
      }
    )
  }
}

struct SheetView_Previews: PreviewProvider {
  static var previews: some View {
    SheetView(size: .zero, heading: "Heading")
  }
}
