//
//  UserRowView.swift
//  Twitter
//
//  Created by Jason Dubon on 7/17/22.
//

import SwiftUI

struct UserRowView: View {
    var body: some View {
        HStack(spacing: 12) {
            Circle()
                .frame(width: 48, height: 48)
            
            VStack(alignment: .leading, spacing: 4) {
                Text("Thor")
                    .font(.subheadline)
                    .foregroundColor(.black)
                    .bold()
                
                Text("God of Thunder")
                    .font(.subheadline)
                    .foregroundColor(.gray)
            }
            Spacer()
        }.padding(.horizontal).padding(.vertical, 4)
    }
}

struct UserRowView_Previews: PreviewProvider {
    static var previews: some View {
        UserRowView()
    }
}
