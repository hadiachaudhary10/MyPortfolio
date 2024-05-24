//
//  TestProjectsGroupView.swift
//  MyPortfolio
//
//  Created by Dev on 23/05/2024.
//

import SwiftUI

struct ProjectsGroupView: View {
    let projectsList: [ProjectItemModel]
  var body: some View {
    VStack(alignment: .leading) {
      HStack(alignment: .center) {
        Image(systemName: "sparkles")
          .foregroundColor(.canvasTintDtl)
          .font(.system(size: 35))
        Text("My Projects")
          .font(.system(.title))
          .bold()
          .foregroundColor(.textColor)
        Spacer()
      }
      .padding(.bottom)
        VStack {
            ForEach(projectsList, id: \.self) { project in
                ProjectItemView(project: project)
            }
        }
    }
    .padding(.all)
  }
}

struct ProjectItemView: View {
    var project: ProjectItemModel
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Button {
                    AppService().openURL(urlString: project.projectGithubURL)
                } label: {
                    Text(project.projectName)
                        .foregroundColor(.textColor)
                        .font(.title3)
                        .underline()
                        .bold()
                        .padding(.bottom, 2)
                }
                Spacer()
                NavigationLink(destination: VideoPlayerView(videoName: project.demoVideoName)) {
                    Text("Watch Demo")
                        .foregroundColor(.canvasTintDtl)
                        .font(.footnote.bold())
                }
            }
            Text(project.projectDescription)
                .multilineTextAlignment(.leading)
                .foregroundColor(.textColor.opacity(0.6))
                .font(.footnote)
                .padding(.bottom, 5)
            HStack {
                Text("Technologies: ")
                    .foregroundColor(.textColor.opacity(0.6))
                    .font(.footnote.bold())
                Text(project.technologiesUsed)
                    .foregroundColor(.textColor.opacity(0.6))
                    .font(.footnote)
                Spacer()
            }
        }
        .padding(.all)
        .background(Color.monochromeMagic)
        .cornerRadius(25)
        .padding(.bottom, 20)
    }
}
