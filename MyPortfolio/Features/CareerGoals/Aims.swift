//
//  Aims.swift
//  MyPortfolio
//
//  Created by Dev on 23/05/2024.
//

import SwiftUI

struct Aims: View {
    var size: CGSize
    var aimsData: [String]
    var body: some View {
        ForEach(aims, id: \.self) { aim in
            VStack(spacing: 0) {
                HStack {
                    ArrowShape(size: size)
                        .fill(Color.monochromeMagic)
                        .frame(width: size.width * 0.04, height: size.width * 0.025)
                        .padding(.leading, aim.bubblePadding)
                    Spacer()
                }
                .frame(maxWidth: size.width * 0.8)

                Text(aim.aim)
                    .foregroundStyle(Color.textColor)
                    .font(.caption2)
                    .padding(.all, 5)
                    .padding(.horizontal, 5)
                    .multilineTextAlignment(.center)
                    .frame(maxWidth: size.width * 0.8)
                    .background(
                        Color.monochromeMagic
                    )
                    .clipShape(RoundedRectangle(cornerRadius: 10))
            }
            .position(CGPoint(x: aim.x_cord, y: aim.y_cord))
            .shadow(color: Color.black.opacity(0.4), radius: 3, x: 0, y: 2)
        }
    }

    var aims: [AimWrapper] {
        return [
            AimWrapper(aimsData[0], size.width * 0.58, size.height * 0.77, size.width * 0.04),
            AimWrapper(aimsData[1], size.width * 0.47, size.height * 0.49, size.width * 0.6),
            AimWrapper(aimsData[2], size.width * 0.58, size.height * 0.205, size.width * 0.73)
        ]
    }
}
