//
//  AboutMe.swift
//  MyPortfolio
//
//  Created by Dev on 11/12/2023.
//

import SwiftUI

struct AboutMe: View {
  var body: some View {
    BaseUI { size in
      BackgroundUI(picture: "AboutMePic", caption1: "Hello,", caption2: "I am Hadia!", bottomPadding: size.height * 0.1)
      SheetView(size: size, heading: "About Me 🤔")
    }
  }
}

struct AboutMe_Previews: PreviewProvider {
  static var previews: some View {
    AboutMe()
  }
}
