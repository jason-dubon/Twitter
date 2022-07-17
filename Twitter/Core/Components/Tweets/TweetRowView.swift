//
//  TweetRowView.swift
//  Twitter
//
//  Created by Jason Dubon on 7/17/22.
//

import SwiftUI

struct TweetRowView: View {
    var body: some View {
        
        VStack(alignment: .leading) {
            // profile image, and tweet
            HStack(alignment: .top, spacing: 12) {
                Circle()
                    .frame(width: 56, height: 56)
                    .foregroundColor(Color(.systemRed))
                
                // Tweet Info
                VStack(alignment: .leading, spacing: 4) {
                    HStack {
                        Text("Rocky")
                            .font(.subheadline).bold()
                        Text("@thedog")
                            .foregroundColor(.gray)
                            .font(.caption)
                        Text("19s")
                            .foregroundColor(.gray)
                            .font(.caption)
                    }
                    
                    // tweet caption/content
                    Text("I want some food.")
                        .font(.subheadline)
                        .multilineTextAlignment(.leading)
                }
            }
            
            // action buttons
            HStack {
                Button {
                    
                } label: {
                    Image(systemName: "message")
                }
                
                Spacer()
                
                Button {
                    
                } label: {
                    Image(systemName: "arrow.2.squarepath")
                }
                
                Spacer()
                
                Button {
                    
                } label: {
                    Image(systemName: "heart")
                }
                
                Spacer()
                
                Button {
                    
                } label: {
                    Image(systemName: "bookmark")
                }
                
            }.padding(7)
            Divider()
        }.padding()
    }
}

struct TweetRowView_Previews: PreviewProvider {
    static var previews: some View {
        TweetRowView()
    }
}
