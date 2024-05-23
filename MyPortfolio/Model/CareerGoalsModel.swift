//
//  CareerModel.swift
//  MyPortfolio
//
//  Created by Dev on 23/05/2024.
//

import Foundation

struct CareerGoalsModel {
    let aims: [String]
    let durations: [String]
}

struct PointWrapper: Hashable {
    let x_cord: CGFloat
    let y_cord: CGFloat

    init(_ x_cord: CGFloat, _ y_cord: CGFloat) {
        self.x_cord = x_cord
        self.y_cord = y_cord
    }
}

struct AimWrapper: Hashable {
    let aim: String
    let x_cord: CGFloat
    let y_cord: CGFloat
    let bubblePadding: CGFloat

    init(_ aim: String, _ x_cord: CGFloat, _ y_cord: CGFloat, _ bubblePadding: CGFloat) {
        self.aim = aim
        self.x_cord = x_cord
        self.y_cord = y_cord
        self.bubblePadding = bubblePadding
    }
}

struct DurationWrapper: Hashable {
    let duration: String
    let x_cord: CGFloat
    let y_cord: CGFloat

    init(_ duration: String, _ x_cord: CGFloat, _ y_cord: CGFloat) {
        self.duration = duration + " yrs"
        self.x_cord = x_cord
        self.y_cord = y_cord
    }
}
