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
        AboutMe()
          .tabItem {
            Label("About Me", systemImage: "person")
          }
        CareerGoals()
          .tabItem {
            Label("Career Goals", systemImage: "trophy")
          }
        Education()
          .tabItem {
            Label("Education", systemImage: "graduationcap")
          }
        Experience()
          .tabItem {
            Label("Experience", systemImage: "medal")
          }
        Passions()
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

struct TabBarView_Previews: PreviewProvider {
  static var previews: some View {
    TabBarView()
  }
}
