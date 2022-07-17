//
//  UserStatsView.swift
//  Twitter
//
//  Created by Jason Dubon on 7/17/22.
//

import SwiftUI

struct UserStatsView: View {
    var body: some View {
        HStack(spacing: 20) {
            HStack {
                Text("1")
                    .font(.subheadline)
                    .bold()
                
                Text("Following")
                    .font(.caption)
                    .foregroundColor(.gray)
            }
            HStack {
                Text("15.4M")
                    .font(.subheadline)
                    .bold()
                
                Text("Followers")
                    .font(.caption)
                    .foregroundColor(.gray)
            }
        }
    }
}

struct UserStatsView_Previews: PreviewProvider {
    static var previews: some View {
        UserStatsView()
    }
}
