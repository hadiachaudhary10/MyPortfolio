//
//  ChatBubbleArrowShape.swift
//  MyPortfolio
//
//  Created by Dev on 23/05/2024.
//

import SwiftUI

struct ArrowShape: Shape {
  var size: CGSize
  func path(in rect: CGRect) -> Path {
    let newRect = CGRect(x: 0, y: 0, width: size.width * 0.1, height: size.width * 0.1)
    var path = Path()
    let startPoint = CGPoint(x: 0, y: 0)
    let controlPoint = CGPoint(x: newRect.width * 0.2, y: newRect.height * 0.1)
    let endPoint = CGPoint(x: newRect.width * 0.2, y: newRect.height * 0.25)
    let startPoint2 = CGPoint(x: newRect.width * 0.5, y: newRect.height * 0.25)
    let controlPoint2 = CGPoint(x: newRect.width * 0.4, y: newRect.height * 0.1)
    let endPoint2 = CGPoint(x: newRect.width * 0.05, y: 0)
    path.move(to: startPoint)
    path.addQuadCurve(to: endPoint, control: controlPoint)
    path.addLine(to: startPoint2)
    path.addQuadCurve(to: endPoint2, control: controlPoint2)
    return path
  }
}
