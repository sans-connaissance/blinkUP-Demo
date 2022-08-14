//
//  ContentView.swift
//  blinkUP-Demo
//
//  Created by David Malicke on 8/9/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Image(systemName: "house.fill")
                    Text(verbatim: "")
                }.tag(0)
            
            FriendsGroupsContainerView()
                .tabItem {
                    Image(systemName: "person.2")
                    Text(verbatim: "")
                }.tag(1)
            SearchView()
                .tabItem {
                    Image(systemName: "magnifyingglass")
                    Text(verbatim: "")
                }.tag(2)
            ProfileView()
                .tabItem {
                    Image(systemName: "person.circle")
                    Text(verbatim: "")
                }.tag(3)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
