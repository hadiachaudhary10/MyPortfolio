//
//  SplashScreen.swift
//  MyPortfolio
//
//  Created by Dev on 11/12/2023.
//

import SwiftUI

struct SplashScreen: View {
  @State private var isActive: Bool = false
  @State private var imageFadeInOut: Bool = false
  @State private var titleFadeInOut: Bool = false
  @StateObject var viewModel: SplashScreenViewModel
  var body: some View {
    if isActive {
      TabBarView()
    } else {
      GeometryReader { geo in
        VStack {
          VStack {
            Image(viewModel.data.imageName)
              .resizable()
              .clipShape(Circle())
              .frame(width: geo.size.width/1.5, height: geo.size.width/1.5)
              .overlay(
                Circle()
                  .stroke(Color.canvasTintDtl, lineWidth: 4)
              )
          }
          .frame(height: geo.size.height * 0.6)
          .onAppear {
            withAnimation(Animation.easeInOut(duration: 2)) {
              imageFadeInOut.toggle()
            }
          }
          .scaleEffect(imageFadeInOut ? 1.0 : 0.5)
          .opacity(imageFadeInOut ? 1 : 0)
          Spacer()
          VStack {
            Text(viewModel.data.devName)
              .font(.system(.title))
              .bold()
              .foregroundColor(Color.canvasTintDtl)
          }
          .frame(height: geo.size.height * 0.1)
          .onAppear {
            withAnimation(Animation.easeInOut(duration: 1.5)) {
              titleFadeInOut.toggle()
            }
          }
          .offset(y: titleFadeInOut ? 0 : geo.size.height * 0.1)
        }
        .frame(width: geo.size.width, height: geo.size.height)
      }
      .background(Gradient.canvasGradientLtd)
      .onAppear {
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
          withAnimation {
            self.isActive = true
          }
        }
      }
    }
  }
}
