//
//  FriendViewModel.swift
//  blinkUP-Demo
//
//  Created by David Malicke on 8/10/22.
//

import Foundation
import SwiftUI

struct FriendViewModel: Hashable {
    let friend: Friend
    
    var id: Int {
        return friend.id
    }
    
    var image:Image {
        return Image(systemName: friend.image ?? "person.fill" )
    }
    
    var displayName: String {
        return friend.displayName ?? ""
    }
    
    var fullName: String {
        return friend.fullName ?? ""
    }
    
    var distanceAway: Double {
        return friend.distanceAway ?? 9.99
    }
    
    var memberGroups: [GroupViewModel] {
        guard let unWrappedGroups = friend.memberGroups else {return []}
        let groups = unWrappedGroups.map(GroupViewModel.init)
        return groups
    }
    var managedGroups: [GroupViewModel] {
        guard let unWrappedGroups = friend.managedGroups else {return []}
        let groups = unWrappedGroups.map(GroupViewModel.init)
        return groups
    }
}
