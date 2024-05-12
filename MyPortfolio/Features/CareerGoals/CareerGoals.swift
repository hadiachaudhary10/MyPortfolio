//
//  CareerGoals.swift
//  MyPortfolio
//
//  Created by Dev on 11/12/2023.
//

import SwiftUI
import Charts

struct CareerGoals: View {
  var body: some View {
    BaseUI { size in
      BackgroundUI(picture: "CareerGoalsPic", caption1: "My", caption2: "Goals", bottomPadding: size.height * 0.1)
      SheetView(sheetSize: size, sheetHeading: "Dreams to Reality 🚀", allowScroll: false) { size in
        VStack {
          DrawingPaths(size: size)
        }
      }
    }
  }
}

struct DrawingPaths: View {
  var size: CGSize
  var body: some View {
    let path = Path { path in
      path.move(to: CGPoint(x: size.width * 0.02, y: size.height * 0.9))
      path.addCurve(to: CGPoint(x: size.width * 0.65, y: size.height * 0.4),
                    control1: CGPoint(x: size.width * 0.25, y: size.height * 0.5),
                    control2: CGPoint(x: size.width * 0.4, y: size.height * 0.8))
      path.addCurve(to: CGPoint(x: size.width + 10, y: size.height * 0.01),
                    control1: CGPoint(x: size.width * 0.8, y: size.height * 0.1),
                    control2: CGPoint(x: size.width * 0.9, y: size.height * 0.2))
      path.addLine(to: CGPoint(x: size.width + 10, y: size.height * 0.9))
    }
    
    let points: [PointWrapper] = [
      PointWrapper(size.width * 0.195, size.height * 0.7),
      PointWrapper(size.width * 0.65, size.height * 0.4),
      PointWrapper(size.width * 0.905, size.height * 0.13)
    ]
    
    let arrows: [ArrowWrapper] = [
      ArrowWrapper(size.width * 0.24, size.height * 0.725),
      ArrowWrapper(size.width * 0.7, size.height * 0.42),
      ArrowWrapper(size.width * 0.94, size.height * 0.155)
    ]
    
    let durations: [DurationWrapper] = [
      DurationWrapper("0-2", size.width * 0.14, size.height * 0.65),
      DurationWrapper("2-5", size.width * 0.57, size.height * 0.36),
      DurationWrapper("5+", size.width * 0.85, size.height * 0.08)
    ]
    
    let aims: [AimWrapper] = [
      AimWrapper("Engaging in projects aligned with company goals and personal ambitions, eager to overcome challenges and foster growth with team support. Committed to driving project success and cultivating a culture of achievement.", size.width * 0.58, size.height * 0.8),
      AimWrapper("Transitioning to a senior role, providing guidance to iOS newcomers, and serving as a valuable mentor within the team. Offering expertise and support to foster growth and collaboration.", size.width * 0.45, size.height * 0.48),
      AimWrapper("Leading development teams to enhance workplace culture and drive innovation. Committed to coaching newcomers and contributing to the tech community.", size.width * 0.63, size.height * 0.22)
    ]
            
    return ZStack {
      path.fill(Gradient.canvasGradientLtd)
          .overlay(path.stroke(Color.textColor, lineWidth: 4))
      
      ForEach(points, id: \.self) { point in
        Circle()
          .fill(Color.monochromeMagic)
          .frame(width: size.width * 0.02, height: size.width * 0.02)
          .overlay(
            Circle()
              .stroke(Color.textColor, lineWidth: 2)
          )
          .position(CGPoint(x: point.x, y: point.y))
      }
      
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
        .position(CGPoint(x: duration.x, y: duration.y))
      }
      
      ForEach(aims, id: \.self) { aim in
        HStack {
          Text(aim.aim)
            .foregroundStyle(Color.textColor)
            .font(.caption)
            .padding(.all, 5)
            .padding(.horizontal, 5)
            .multilineTextAlignment(.center)
        }
        .frame(maxWidth: size.width * 0.7)
        .background(Color.monochromeMagic)
        .clipShape(.rect(cornerRadius: 10))
        .position(CGPoint(x: aim.x, y: aim.y))
        .shadow(color: Color.black.opacity(0.4), radius: 3, x: 0, y: 2)
      }
      
      ForEach(arrows, id: \.self) { arrow in
        ArrowShape()
            .fill(Color.monochromeMagic)
            .frame(width: size.width * 0.04, height: size.width * 0.04)
            .position(x: arrow.x, y: arrow.y)
      }
    }
  }
}

struct PointWrapper: Hashable {
  let x: CGFloat
  let y: CGFloat

  init(_ x: CGFloat, _ y: CGFloat) {
    self.x = x
    self.y = y
  }
}

struct ArrowWrapper: Hashable {
  let x: CGFloat
  let y: CGFloat

  init(_ x: CGFloat, _ y: CGFloat) {
    self.x = x
    self.y = y
  }
}

struct DurationWrapper: Hashable {
  let duration: String
  let x: CGFloat
  let y: CGFloat

  init(_ duration: String, _ x: CGFloat, _ y: CGFloat) {
    self.duration = duration + " yrs"
    self.x = x
    self.y = y
  }
}

struct AimWrapper: Hashable {
  let aim: String
  let x: CGFloat
  let y: CGFloat

  init(_ aim: String, _ x: CGFloat, _ y: CGFloat) {
    self.aim = aim
    self.x = x
    self.y = y
  }
}

struct ArrowShape: Shape {
    func path(in rect: CGRect) -> Path {
      var path = Path()
      let startPoint = CGPoint(x: 0, y: 0)
      
      let controlPoint = CGPoint(x: rect.width * 0.4, y: rect.height * 0.3)
      let endPoint = CGPoint(x: rect.width * 0.4, y: rect.height)

      let startPoint2 = CGPoint(x: rect.width, y: rect.height)
      
      let controlPoint2 = CGPoint(x: rect.width * 0.8, y: rect.height * 0.3)
      let endPoint2 = CGPoint(x: rect.width * 0.05, y: 0)
      
      path.move(to: startPoint)
      path.addQuadCurve(to: endPoint, control: controlPoint)
      
      path.addLine(to: startPoint2)
      path.addQuadCurve(to: endPoint2, control: controlPoint2)
      return path
    }
}

