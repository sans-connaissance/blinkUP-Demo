//
//  MessageViewModel.swift
//  blinkUP-Demo
//
//  Created by David Malicke on 8/10/22.
//

import Foundation
import SwiftUI

struct MessageViewModel: Hashable {
    
    let message: Message
    
    var id: Int {
        return message.id
    }
    
    var messageText: String {
        return message.message ?? ""
    }
    
    var likes: Int {
        return message.likes ?? 0
    }
    
    var postedBy: FriendViewModel? {
        var arrayFriend: [Friend] = []
        guard let unWrappedPoster = message.postedBy else {return nil}
        arrayFriend.append(unWrappedPoster)
        let postedBy = arrayFriend.map(FriendViewModel.init)
        return postedBy.first ?? nil
    }
    
}
