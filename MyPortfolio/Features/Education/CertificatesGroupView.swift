//
//  CertificatesGreupView.swift
//  MyPortfolio
//
//  Created by Dev on 20/01/2024.
//

import SwiftUI

struct CertificatesGroupView: View {
  let certificatesList: [CertificateItemModel]
  var body: some View {
    VStack(alignment: .leading) {
      HStack(alignment: .center) {
        Image(systemName: "medal.fill")
          .foregroundColor(.canvasTintDtl)
          .font(.system(size: 35))
        Text("My certificates")
          .font(.system(.title))
          .bold()
          .foregroundColor(.textColor)
        Spacer()
      }
      .padding(.bottom)
      ForEach(certificatesList, id: \.self) { certificateItem in
        CertificateItemView(certificateName: certificateItem.certificateName, institutionName: certificateItem.institutionName, issueDate: certificateItem.issueDate, certificateProofEmail: certificateItem.certificateProofEmail)
      }
    }
    .padding(.all)
  }
}

struct CertificateItemView: View {
  let certificateName: String
  let institutionName: String
  let issueDate: String
  let certificateProofEmail: String
  var body: some View {
    VStack(alignment: .leading) {
      Button {
        openURL(urlString: certificateProofEmail)
      } label: {
        Text(certificateName)
          .foregroundColor(.textColor)
          .font(.title3)
          .underline()
          .bold()
          .padding(.bottom, 2)
      }
      Text(institutionName)
        .foregroundColor(.textColor.opacity(0.6))
        .font(.footnote)
      Text(issueDate)
        .foregroundColor(.textColor.opacity(0.6))
        .font(.footnote)
    }
    .padding(.all)
  }
  private func openURL(urlString: String) {
    if let url = URL(string: urlString) {
      UIApplication.shared.open(url)
    }
  }
}
