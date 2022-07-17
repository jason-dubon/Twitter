//
//  ProfileView.swift
//  Twitter
//
//  Created by Jason Dubon on 7/17/22.
//

import SwiftUI

struct ProfileView: View {
    @State private var selectedFilter: TweetFilterViewModel = .tweets
    @Namespace var animation
    
    var body: some View {
        VStack(alignment: .leading) {
            headerView
            headerButtons
            userInfoDetails
            tweetFilerBar
            tweetView
            
            
            Spacer()
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}

extension ProfileView {
    
    var headerView: some View {
        
        ZStack(alignment: .bottomLeading) {
            Color(.systemBlue)
                .ignoresSafeArea()
            
            VStack {
                Button {
                    
                } label: {
                    Image(systemName: "arrow.left")
                        .resizable()
                        .frame(width: 20, height: 16)
                        .foregroundColor(.white)
                        .offset(y: 12)
                }
                
//                Circle()
//                    .frame(width: 85, height: 85)
//                    .offset(x: 16, y: 28)
                
                ZStack {
                    Circle()
                    Image("rocky")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .clipShape(Circle())
                }.frame(width: 85, height: 85)
                    .offset(x: 16, y: 28)
                
            }
        }.frame(height: 100)
    }
    
    var headerButtons: some View {
        
        HStack(spacing: 12) {
            Spacer()
            
            Image(systemName: "bell.badge")
                .font(.title3)
                .padding(6)
                .overlay(Circle().stroke(Color.gray, lineWidth: 0.75))
            
            Button {
                
            } label: {
                Text("Edit Profile")
                    .font(.subheadline).bold()
                    .foregroundColor(.black)
                    .frame(width: 120, height: 32)
                    .overlay(RoundedRectangle(cornerRadius: 20).stroke(Color.gray, lineWidth: 0.5))
            }
        }.padding(.trailing)
    }
    
    var userInfoDetails: some View {
        VStack(alignment: .leading, spacing: 4) {
            HStack {
                Text("Rocky")
                    .font(.title2).bold()
                
                Image(systemName: "checkmark.seal.fill")
                    .foregroundColor(Color(.systemBlue))
            }
            Text("@thedog")
                .font(.subheadline)
                .foregroundColor(.gray)
            
            Text("I dont get tired")
                .font(.subheadline)
                .padding(.vertical)
            
            HStack(spacing: 20) {
                HStack {
                    Image(systemName: "mappin.and.ellipse")
                    
                    Text("Atlanta, GA")
                }
                HStack {
                    Image(systemName: "link")
                    
                    Text("www.jasondubon.webflow.io")
                }
            }.font(.caption).foregroundColor(.gray)
            
            UserStatsView().padding(.vertical)
            
        }.padding(.horizontal)
        
    }
    
    var tweetFilerBar: some View {
        HStack {
            ForEach(TweetFilterViewModel.allCases, id: \.rawValue) { item in
                VStack {
                    Text(item.title)
                        .font(.subheadline)
                        .fontWeight(selectedFilter == item ? .semibold : .regular)
                        .foregroundColor(selectedFilter == item ? .black : .gray)
                    
                    if selectedFilter == item {
                        Capsule()
                            .foregroundColor(Color(.systemBlue))
                            .frame(height: 3)
                            .matchedGeometryEffect(id: "filter", in: animation)
                    } else {
                        Capsule()
                            .foregroundColor(Color(.clear))
                            .frame(height: 3)
                    }
                }
                .onTapGesture {
                    withAnimation(.easeOut) {
                        self.selectedFilter = item
                    }
                }
            }
        }.overlay(Divider().offset(x:0, y:16))
    }
    
    var tweetView: some View {
        ScrollView {
            LazyVStack {
                ForEach(0...8, id: \.self) { _ in
                    TweetRowView()
                }
            }
        }
    }
}
