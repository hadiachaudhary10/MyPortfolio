//
//  TabBarView.swift
//  MyPortfolio
//
//  Created by Dev on 11/12/2023.
//

import SwiftUI

struct TabBarView: View {
  var body: some View {
    NavigationView {
      TabView {
        AboutMe(viewModel: AboutMeViewModel())
          .tabItem {
            Label("About Me", systemImage: "person")
          }
          CareerGoals(viewModel: CareerGoalsViewModel())
          .tabItem {
            Label("Career Goals", systemImage: "trophy")
          }
        Education(viewModel: EducationViewModel())
          .tabItem {
            Label("Education", systemImage: "graduationcap")
          }
        Experience(viewModel: ExperienceViewModel())
          .tabItem {
            Label("Experience", systemImage: "medal")
          }
        Passion(viewModel: PassionViewModel())
          .tabItem {
            Label("Passions", systemImage: "heart")
          }
      }
      .tint(Color.tabBarIcon)
      .onAppear {
        UITabBar.appearance().backgroundColor = UIColor(Color.monochromeMagic)
      }
    }
  }
}
