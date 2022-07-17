//
//  SideMenuView.swift
//  Twitter
//
//  Created by Jason Dubon on 7/17/22.
//

import SwiftUI

struct SideMenuView: View {
    var body: some View {
        
        VStack(alignment: .leading, spacing: 32) {
            VStack(alignment: .leading) {
                Circle()
                    .frame(width: 48, height: 48)
                
                VStack(alignment: .leading, spacing: 4) {
                    Text("Rocky")
                        .font(.headline)
                    
                    Text("@thedog")
                        .font(.caption)
                        .foregroundColor(.gray)
                }
                UserStatsView().padding(.vertical)
            }.padding(.leading)
            
            ForEach(SideMenuViewModel.allCases, id: \.rawValue) { option in
                if option == .profile {
                    NavigationLink {
                        ProfileView()
                    } label: {
                        SideMenuOptionsView(viewModel: option)
                    }
                } else if option == .logout {
                    Button {
                        print("logged out")
                    } label: {
                        SideMenuOptionsView(viewModel: option)
                    }
                } else {
                    SideMenuOptionsView(viewModel: option)
                }
                
            }
            Spacer()
        }
    }
}

struct SideMenuView_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuView()
    }
}


