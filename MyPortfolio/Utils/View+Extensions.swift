//
//  View+Extensions.swift
//  MyPortfolio
//
//  Created by Dev on 29/12/2023.
//

import SwiftUI

extension View {
  func cornerRadius(_ radius: CGFloat, corners: UIRectCorner) -> some View {
    ModifiedContent(content: self, modifier: CornerRadiusStyle(radius: radius, corners: corners))
  }
}
