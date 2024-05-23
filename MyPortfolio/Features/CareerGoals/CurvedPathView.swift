//
//  CurvedPathView.swift
//  MyPortfolio
//
//  Created by Dev on 23/05/2024.
//

import SwiftUI

struct CurvedPathView: View {
    var size: CGSize
    var body: some View {
        let path =  Path { path in
            path.move(to: CGPoint(x: size.width * 0.02, y: size.height * 0.9))
            path.addCurve(to: CGPoint(x: size.width * 0.65, y: size.height * 0.4),
                        control1: CGPoint(x: size.width * 0.25, y: size.height * 0.5),
                        control2: CGPoint(x: size.width * 0.4, y: size.height * 0.8))
            path.addCurve(to: CGPoint(x: size.width + 10, y: size.height * 0.01),
                        control1: CGPoint(x: size.width * 0.8, y: size.height * 0.1),
                        control2: CGPoint(x: size.width * 0.9, y: size.height * 0.2))
            path.addLine(to: CGPoint(x: size.width + 10, y: size.height * 0.9))
        }
        return path
            .fill(Gradient.canvasGradientLtd)
            .overlay(path.stroke(Color.textColor, lineWidth: 4))
    }
}
