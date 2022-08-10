//
//  FriendsGroupsContainerView.swift
//  blinkUP-Demo
//
//  Created by David Malicke on 8/10/22.
//

import SwiftUI

struct FriendsGroupsContainerView: View {
    @State private var selectedScreen = "Friends"
    var screenSelection = ["Friends", "Groups"]
    
    var body: some View {
        VStack {
            Picker("", selection: $selectedScreen.animation()) {
                ForEach(screenSelection, id: \.self) {
                    Text($0)
                }
                
            }
            .pickerStyle(.segmented)
            .labelsHidden()
            .padding()
            
            Divider()
            
            HStack(alignment: .center, spacing: 10) {
                switch selectedScreen {
                case "Friends":
                    FriendsView()
                        .transition(.asymmetric(insertion: .move(edge: .leading), removal: .move(edge: .trailing)))
                    
                case "Groups":
                    GroupsView()
                        .transition(.asymmetric(insertion: .move(edge: .trailing), removal: .move(edge: .leading)))
                    
                default:
                    FriendsView()
                        .transition(.asymmetric(insertion: .move(edge: .leading), removal: .move(edge: .trailing)))
                    
                }
            }
            Spacer()
        }
        .navigationBarTitle("")
        .navigationBarHidden(true)
    }
}

struct FriendsGroupsContainerView_Previews: PreviewProvider {
    static var previews: some View {
        FriendsGroupsContainerView()
    }
}