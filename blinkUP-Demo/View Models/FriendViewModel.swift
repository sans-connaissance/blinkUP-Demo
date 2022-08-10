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
    
    var image: String {
        return friend.image ?? "person.fill"
    }
    
    var displayName: String {
        return friend.displayName ?? ""
    }
    
    var fullName: String {
        return friend.fullName ?? ""
    }
    
    var distanceAway: String {
        
        return friend.distanceAway?.withCommas() ?? ""
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

/// NumberFormatter used in Person, Title, Department, and Campus ViewModels
extension Double {
    func withCommas() -> String {
        let numberFormatter = NumberFormatter()
        numberFormatter.numberStyle = .decimal
        numberFormatter.minimumFractionDigits = 2
        return numberFormatter.string(from: NSNumber(value: self))!
    }
}
