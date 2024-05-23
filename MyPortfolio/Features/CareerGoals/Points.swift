//
//  Points.swift
//  MyPortfolio
//
//  Created by Dev on 23/05/2024.
//

import SwiftUI

struct Points: View {
    var size: CGSize
    var body: some View {
        ForEach(points, id: \.self) { point in
            Circle()
                .fill(Color.monochromeMagic)
                .frame(width: size.width * 0.02, height: size.width * 0.02)
                .overlay(
                    Circle()
                        .stroke(Color.textColor, lineWidth: 2)
                )
                .position(CGPoint(x: point.x_cord, y: point.y_cord))
        }
    }

    var points: [PointWrapper] {
        return  [
            PointWrapper(size.width * 0.195, size.height * 0.7),
            PointWrapper(size.width * 0.65, size.height * 0.4),
            PointWrapper(size.width * 0.905, size.height * 0.13)
        ]
    }
}
