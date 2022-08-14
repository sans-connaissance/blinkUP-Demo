//
//  GroupViewModel.swift
//  blinkUP-Demo
//
//  Created by David Malicke on 8/10/22.
//

import Foundation
import SwiftUI

struct GroupViewModel: Hashable {
    
    let group: Group
    
    var id: Int {
        return group.id
    }
    
    var name: String {
        return group.name ?? ""
    }
    
    var image: String {
        return group.image ?? "person.fill"
    }
    
    var shortDescription: String {
        return group.shortDescription ?? ""
    }
    
    var longDescription: String {
        return group.longDescription ?? ""
    }
    
    var messages: [MessageViewModel] {
        guard let unWrappedMessages = group.message else {return []}
        let messages = unWrappedMessages.map(MessageViewModel.init)
        return messages
    }
    
    var members: [FriendViewModel] {
        guard let unWrappedFriends = group.members else {return []}
        let members = unWrappedFriends.map(FriendViewModel.init)
        return members
    }
    
    var meetups: [MeetUpViewModel] {
        guard let unWrappedMeetups = group.meetUps else {return []}
        let meetups = unWrappedMeetups.map(MeetUpViewModel.init)
        return meetups
    }
}
