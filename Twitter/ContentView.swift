//
//  ContentView.swift
//  Twitter
//
//  Created by Jason Dubon on 7/17/22.
//

import SwiftUI

struct ContentView: View {
    @State private var showMenu = false
    
    var body: some View {
        ZStack(alignment: .topLeading) {
            MainTabView()
                .navigationBarHidden(showMenu)
            if showMenu {
                ZStack {
                    Color(.black)
                        .opacity(showMenu ? 0.25 : 0.0)
                }.onTapGesture {
                    withAnimation(.easeInOut) {
                        showMenu = false
                    }
                }
            }
            
            SideMenuView()
                .frame(width: 300)
                .background(showMenu ? Color(.systemBackground) : Color.clear)
                .offset(x: showMenu ? 0 : -300, y: 0)
        }
        .navigationTitle("Home")
        .navigationBarTitleDisplayMode(.inline)
        .toolbar {
            ToolbarItem(placement: .navigationBarLeading) {
                Button {
                    showMenu.toggle()
                } label: {
                    Circle()
                        .frame(width: 32, height: 32)
                }
            }
            }.onAppear {
                showMenu = false
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
