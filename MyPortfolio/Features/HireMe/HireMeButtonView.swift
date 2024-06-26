//
//  HireMeButtonView.swift
//  MyPortfolio
//
//  Created by Dev on 06/05/2024.
//

import SwiftUI

struct HireMeButtonView: View {
  @StateObject var viewModel: HireMeViewModel
  var body: some View {
    Menu {
      ForEach(viewModel.data, id: \.self) { contactType in
        if let subItems = contactType.subItem {
          Menu {
            ForEach(subItems, id: \.self) { subContactType in
              Button {
                if subContactType.type == .copy {
                  copyNumber(number: subContactType.data)
                } else if subContactType.type == .sendEmail {
                  sendEmail(email: subContactType.data)
                } else if subContactType.type == .callNumber {
                  callNumber(number: subContactType.data)
                }
              } label: {
                HStack {
                  Text(subContactType.name)
                }
              }
            }
          } label: {
            HStack {
              Text(contactType.name)
              Image(systemName: contactType.imageName)
            }
          }
        } else {
          Button {
            AppService().openURL(urlString: contactType.data ?? "")
          } label: {
            HStack {
              Text(contactType.name)
              Image(systemName: contactType.imageName)
            }
          }
        }
      }
    } label: {
      Text("Hire Me")
        .fontWeight(.heavy)
        .padding(.horizontal)
        .foregroundColor(Color.hireMeTextDTL)
    }
    .padding(.all, 10)
    .background(Color.hireMeTextLTD)
    .cornerRadius(25)
    .padding(.trailing)
  }
  
  private func copyNumber(number: String) {
    UIPasteboard.general.string = number
  }
  
  private func sendEmail(email: String) {
    if let email = email.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed) {
      AppService().openURL(urlString: "mailTo:\(email)")
    }
  }
  
  private func callNumber(number: String) {
    AppService().openURL(urlString: "tel:\(number)")
  }
}
