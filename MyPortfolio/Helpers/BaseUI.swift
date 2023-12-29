//
//  BaseUI.swift
//  MyPortfolio
//
//  Created by Dev on 28/12/2023.
//

import SwiftUI

struct BaseUI: View {
  var picture: String
  var caption1: String
  var caption2: String
  @State var isShowingCaption1: Bool = false
  @State var isShowingCaption2: Bool = false
  var body: some View {
   GeometryReader { geo in
      VStack {
        HStack {
          Spacer()
          Button {} label: {
            Text("Hire Me")
              .fontWeight(.heavy)
              .padding(.horizontal)
              .foregroundColor(Color.canvasTintLtd)
          }
          .padding(.all)
          .background(Color.canvasTintDtl)
          .cornerRadius(25)
        }
        .padding(.trailing)
        Spacer()
        HStack {
          VStack(alignment: .leading) {
            if isShowingCaption1 {
              Text(caption1)
                .font(.custom("Nunito-Black", size: 50, relativeTo: .largeTitle))
                .foregroundColor(.white)
            }
            Text(caption2)
              .font(.custom("Nunito-Black", size: 50, relativeTo: .largeTitle))
              .foregroundColor(.white)
              .opacity(isShowingCaption2 ? 1 : 0)
          }
          .padding(.bottom)
          .transition(.move(edge: self.isShowingCaption1 ? .leading : .trailing))
          .transition(.move(edge: self.isShowingCaption2 ? .leading : .trailing))
          Spacer()
        }
        .padding(.all)
      }
      .background(
        VStack {
          Image(picture)
            .resizable()
            .scaledToFill()
            .edgesIgnoringSafeArea(.all)
        }
      )
      .background(Gradient.canvasGradientLtd)
      .frame(width: geo.size.width, height: geo.size.height)
    }
   .onAppear {
     DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
       withAnimation(Animation.linear(duration: 1)) {
         isShowingCaption1 = true
       }
     }
     DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) {
       withAnimation(Animation.linear(duration: 1)) {
         isShowingCaption2 = true
       }
     }
   }
   .onDisappear {
     isShowingCaption1 = false
     isShowingCaption2 = false
   }
  }
}

struct BaseUI_Previews: PreviewProvider {
  static var previews: some View {
    BaseUI(picture: "", caption1: "", caption2: "")
  }
}
