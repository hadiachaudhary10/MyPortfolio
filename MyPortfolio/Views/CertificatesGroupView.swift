//
//  CertificatesGreupView.swift
//  MyPortfolio
//
//  Created by Dev on 20/01/2024.
//

import SwiftUI

struct CertificatesGroupView: View {
  var body: some View {
    VStack(alignment: .leading) {
      HStack(alignment: .center) {
        Image(systemName: "medal")
          .foregroundColor(.yellow)
          .font(.system(size: 35))
        Text("My certificates")
          .font(.system(.title))
          .bold()
          .foregroundColor(.black)
        Spacer()
      }
      .padding(.bottom)
      CertificateItemView(certificateName: "iOS App Capstone", institutionName: "Meta - Coursera", issueDate: "July 2023", certificateProofEmail: Constant.iOS_APP_CAPSTONE)
      CertificateItemView(certificateName: "Jira Fundamentals Badge", institutionName: "Atlassian", issueDate: "July 2023", certificateProofEmail: Constant.JIRA_FUNDAMENTALS_BADGE)
      CertificateItemView(certificateName: "Introduction to Cybersecurity", institutionName: "Cisco", issueDate: "July 2023", certificateProofEmail: Constant.INTRO_TO_CYBERSECURITY)
      CertificateItemView(certificateName: "Crash Course on Python", institutionName: "Google - Coursera", issueDate: "July 2023", certificateProofEmail: Constant.CRASH_COURSE_ON_PYTHON)
    }
    .padding(.all)
  }
}

struct CertificatesGreupView_Previews: PreviewProvider {
  static var previews: some View {
    CertificatesGroupView()
  }
}

struct CertificateItemView: View {
  var certificateName: String
  var institutionName: String
  var issueDate: String
  var certificateProofEmail: String
  var body: some View {
    VStack(alignment: .leading) {
      Button {
        openURL(urlString: certificateProofEmail)
      } label: {
        Text(certificateName)
          .foregroundColor(.black)
          .font(.title3)
          .underline()
          .bold()
          .padding(.bottom, 3)
      }
      Text(institutionName)
        .foregroundColor(.black)
        .font(.callout)
      Text(issueDate)
        .foregroundColor(.black)
        .font(.callout)
    }
    .padding(.all)
  }
  private func openURL(urlString: String) {
    if let url = URL(string: urlString) {
      UIApplication.shared.open(url)
    }
  }
}
