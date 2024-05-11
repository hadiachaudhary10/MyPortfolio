//
//  BaseUI.swift
//  MyPortfolio
//
//  Created by Dev on 28/12/2023.
//

import SwiftUI

struct BackgroundUI: View {
  var picture: String
  var caption1: String
  var caption2: String
  var bottomPadding: CGFloat
  
  @State var isShowingCaption1: Bool = false
  @State var isShowingCaption2: Bool = false
  
  @StateObject var appService = AppService.shared
  @Environment(\.colorScheme) var colorScheme
  var body: some View {
   GeometryReader { geo in
      VStack {
        HStack {
          Spacer()
          if appService.showHireButtonInBackground {
            HireMeButtonView()
          }
        }
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
        .padding(.bottom, bottomPadding)
      }
      .background(
        VStack {
          Image(picture)
            .resizable()
            .scaledToFill()
            .edgesIgnoringSafeArea(.all)
            .opacity(colorScheme == .dark ? 0.7 : 1)
        }
      )
      .background(picture == "AboutMePic" ? Color.canvasTintLtd : Color.clear)
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
