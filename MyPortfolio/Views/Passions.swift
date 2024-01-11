//
//  Passions.swift
//  MyPortfolio
//
//  Created by Dev on 11/12/2023.
//

import SwiftUI

struct Passions: View {
  var body: some View {
    BaseUI { size in
      BackgroundUI(picture: "PassionsPic", caption1: "My", caption2: "Passions", bottomPadding: size.height * 0.1)
      SheetView(size: size, heading: "Versions of me 😁")
    }
  }
}

struct Passions_Previews: PreviewProvider {
  static var previews: some View {
    Passions()
  }
}
