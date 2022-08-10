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
            Picker("", selection: $selectedScreen) {
                ForEach(screenSelection, id: \.self) {
                    Text($0)
                }
            }
            .pickerStyle(.segmented)
            .padding()
            Divider()
            
            switch selectedScreen {
            case "Friends":
                FriendsView()
            case "Groups":
                GroupsView()
            default:
                FriendsView()
            }
            Spacer()
        }
    }
}

struct FriendsGroupsContainerView_Previews: PreviewProvider {
    static var previews: some View {
        FriendsGroupsContainerView()
    }
}
