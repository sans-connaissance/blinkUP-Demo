//
//  FriendDetailView.swift
//  blinkUP-Demo
//
//  Created by David Malicke on 8/15/22.
//

import SwiftUI

struct FriendDetailView: View {
    var friend: FriendViewModel
    
    var body: some View {
        Text(friend.fullName)
            .customNavBarisHidden(false)
            .customNavBarType(.friend)
            .customNavBarFriendVM(friend)
    }
}

struct FriendDetailView_Previews: PreviewProvider {
    static var previews: some View {
        let examples = mockFriends.map(FriendViewModel.init)
        FriendDetailView(friend: examples[0])
    }
}
