//
//  Education.swift
//  MyPortfolio
//
//  Created by Dev on 11/12/2023.
//

import SwiftUI

struct Education: View {
  var body: some View {
    BaseUI { size in
      BackgroundUI(picture: "EducationPic", caption1: "My", caption2: "Education", bottomPadding: size.height * 0.1)
      SheetView(sheetSize: size, sheetHeading: "Scroll up to discover 📚") { _ in
        EducationGroupView()
        CertificatesGroupView()
      }
    }
  }
}

struct Education_Previews: PreviewProvider {
  static var previews: some View {
    Education()
  }
}
