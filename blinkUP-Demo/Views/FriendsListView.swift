//
//  FriendsView.swift
//  blinkUP-Demo
//
//  Created by David Malicke on 8/10/22.
//

import SwiftUI

struct FriendsListView: View {
    @StateObject var vm = FriendsListViewModel()
    
    var body: some View {
        VStack {
            Text("\(vm.friends.count) Friends").bold()
            List {
                ForEach(vm.friends, id: \.self) { friend in
                    FriendRow(friend: friend)
                }
                .listRowSeparatorTint(.clear)

                
            }
            .listStyle(.grouped)
        }.onAppear{vm.getFriends()}
    }
}

struct FriendsView_Previews: PreviewProvider {
    static var previews: some View {
        FriendsListView()
    }
}
