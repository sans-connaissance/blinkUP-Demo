//
//  CustomNavBarView.swift
//  blinkUP-Demo
//
//  Created by David Malicke on 8/13/22.
//

import SwiftUI

struct CustomNavBarView: View {
    
    @Environment(\.presentationMode) var presentationMode
    let showBackButton: Bool
    let title: String
    let subTitle: String?
    let isHidden: Bool
    let navType: NavType
    let image: String
    let memberCount: Int
    let meetUpCount: Int
    let group: GroupViewModel
    let friend: FriendViewModel
    
    
    var body: some View {
        if isHidden {
            HStack {}
        } else {
            HStack {
                if showBackButton {
                    backButton
                }
                Spacer()
                switch navType {
                case .group:
                    groupSectionHeader
                    Spacer()
                case .friend:
                    friendSectionHeader
                    Spacer()
                    if showBackButton {
                        backButton.opacity(0)
                    }
                }
                //                titleSection
                //                Spacer()
                //                if showBackButton {
                //                    backButton.opacity(0)
                //                }
                
            }
            .padding()
            .accentColor(.white)
            .foregroundColor(.white)
            .font(.headline)
            .background(Color.blue.ignoresSafeArea(edges: .top))
        }
    }
}

extension CustomNavBarView {
    
    private var backButton: some View {
        Button {
            presentationMode.wrappedValue.dismiss()
        } label: {
            Image(systemName: "chevron.left")
        }
    }
    
    private var friendSectionHeader: some View {
        HStack(spacing: 10){
            ImageViewGroup(image: friend.image)
                .foregroundColor(.black)
            Spacer()
            VStack {
                Text("\(10)")
                Text("Friends")
            }
            VStack {
                Text("\(15)")
                Text("Count")
            }
        }
    }
    
    private var groupSectionHeader: some View {
        
        HStack(spacing: 10){
            ImageViewGroup(image: group.image)
                .foregroundColor(.black)
            Spacer()
            VStack {
                Text("\(group.members.count)")
                Text("Members")
            }
            VStack {
                Text("\(group.meetups.count)")
                Text("Meet Ups")
            }
        }
    }
}

struct CustomNavBarView_Previews: PreviewProvider {
    static var previews: some View {
        
        let examplesF = mockFriends.map(FriendViewModel.init)
        let examplesG = mockGroups.map(GroupViewModel.init)
        
        VStack {
            CustomNavBarView(showBackButton: true, title: "Title here", subTitle: "subtitle goes here", isHidden: false, navType: .group, image: "person.fiil", memberCount: 10, meetUpCount: 10, group: examplesG[0], friend: examplesF[0])
            Spacer()
        }
    }
}

enum NavType: String {
    case group, friend
}

