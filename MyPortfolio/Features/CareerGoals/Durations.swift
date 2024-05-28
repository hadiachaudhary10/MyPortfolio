//
//  Durations.swift
//  MyPortfolio
//
//  Created by Dev on 23/05/2024.
//

import SwiftUI

struct Durations: View {
  var size: CGSize
  var durationsData: [String]
  var body: some View {
    ForEach(durations, id: \.self) { duration in
      HStack {
        Text(duration.duration)
          .foregroundStyle(Color.hireMeTextDTL)
          .font(.caption.bold())
          .padding(.all, 5)
          .padding(.horizontal, 5)
      }
      .background(Color.hireMeTextLTD)
      .clipShape(.capsule)
      .position(CGPoint(x: duration.x_cord, y: duration.y_cord))
    }
  }
  
  var durations: [DurationWrapper] {
    return [
      DurationWrapper(durationsData[0], size.width * 0.14, size.height * 0.65),
      DurationWrapper(durationsData[1], size.width * 0.57, size.height * 0.36),
      DurationWrapper(durationsData[2], size.width * 0.85, size.height * 0.08)
    ]
  }
}
