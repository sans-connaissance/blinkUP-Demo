//
//  AppNavBarView.swift
//  blinkUP-Demo
//
//  Created by David Malicke on 8/13/22.
//

import SwiftUI

struct AppNavBarView: View {
    var body: some View {
        CustomNavView {
            ZStack {
                Color.orange.ignoresSafeArea()
                
                CustomNavLink(
                    destination: Text("Destination")
                    .customNavigationTitle("awesomeness screen!")
                    .customNavigationSubTitle("Wohoo!")
                ) {
                    Text("Navigate")
                        
                }
            }
            .customNavBarisHidden(true)
            .customNavigationTitle("Custom Title")
            .customNavBarBackButtonHidden(true)
        }
    }
}

struct AppNavBarView_Previews: PreviewProvider {
    static var previews: some View {
        AppNavBarView()
    }
}

extension AppNavBarView {
    
    private var defaultNavView: some View {
        
        NavigationView {
            ZStack {
                
                Color.green.ignoresSafeArea()
                NavigationLink {
                    Text("Hi")
                        .navigationTitle("Title 2")
                        .navigationBarHidden(false)
                } label: {
                    Text("Navigate")
                }
            }
            .navigationTitle("Nav title here")
        }
    }
}
