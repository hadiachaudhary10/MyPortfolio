//
//  CareerGoalsMock.swift
//  MyPortfolio
//
//  Created by Dev on 23/05/2024.
//

import Foundation

extension CareerGoalsModel {
    static func mock() -> CareerGoalsModel {
        return CareerGoalsModel(
            aims: [
                "Engaging in projects aligned with company goals and personal ambitions, eager to overcome challenges and foster growth with team support.",
                "Transitioning to a senior role, providing guidance to iOS newcomers, and serving as a valuable mentor within the team. Offering expertise and support to foster growth and collaboration.",
                "Leading development teams to enhance workplace culture and drive innovation. Committed to coaching newcomers and contributing to the tech community."
            ],
            durations: [
                "0-2",
                "2-5",
                "5+"
            ]
        )
    }
}
