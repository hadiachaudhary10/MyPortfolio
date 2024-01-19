//
//  Experience.swift
//  MyPortfolio
//
//  Created by Dev on 11/12/2023.
//

import SwiftUI

struct Experience: View {
  var body: some View {
    BaseUI { size in
      BackgroundUI(picture: "ExperiencePic", caption1: "My", caption2: "Experience", bottomPadding: size.height * 0.1)
//      SheetView(size: size, heading: "Professional Path 👩🏻‍💻")
    }
  }
}

struct Experience_Previews: PreviewProvider {
  static var previews: some View {
    Experience()
  }
}
