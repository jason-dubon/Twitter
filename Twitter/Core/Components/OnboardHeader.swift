//
//  OnboardHeader.swift
//  Twitter
//
//  Created by Jason Dubon on 7/18/22.
//

import SwiftUI

struct OnboardHeader: View {
    let title: String
    let subtitle: String
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {Spacer()}
            
            Text(title)
                .font(.largeTitle)
                .fontWeight(.semibold)
            
            Text(subtitle)
                .font(.largeTitle)
                .fontWeight(.semibold)
        }.frame(height: 260).padding(.leading).background(.blue).foregroundColor(.white).clipShape(RoundedShape(corners: .bottomRight))
        
    }
}

struct OnboardHeader_Previews: PreviewProvider {
    static var previews: some View {
        OnboardHeader(title: "Hello", subtitle: "Welcome Back!")
    }
}
