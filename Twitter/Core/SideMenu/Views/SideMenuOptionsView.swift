//
//  SideMenuOptionsView.swift
//  Twitter
//
//  Created by Jason Dubon on 7/17/22.
//

import SwiftUI

struct SideMenuOptionsView: View {
    let viewModel: SideMenuViewModel
    
    var body: some View {
        HStack {
            Image(systemName: viewModel.imageName)
                .font(.headline)
                .foregroundColor(.gray)
            
            Text(viewModel.title)
                .font(.subheadline)
                .foregroundColor(.black)
            Spacer()
        }.frame(height: 40).padding(.horizontal)
    }
}

struct SideMenuOptionsView_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuOptionsView(viewModel: .profile)
    }
}
