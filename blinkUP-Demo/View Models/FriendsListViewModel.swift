//
//  FriendsListViewModel.swift
//  blinkUP-Demo
//
//  Created by David Malicke on 8/10/22.
//

import Foundation

class FriendsListViewModel: ObservableObject {
    @Published var friends: [FriendViewModel] = []
    
    func getFriends() {
        friends = mockFriends.map(FriendViewModel.init)
    }
}
