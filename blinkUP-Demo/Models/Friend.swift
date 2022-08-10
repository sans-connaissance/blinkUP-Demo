//
//  Friend.swift
//  blinkUP-Demo
//
//  Created by David Malicke on 8/9/22.
//

import Foundation
import SwiftUI

struct Friend: Codable, Identifiable, Hashable {
    var id: Int
    var image: String?
    var displayName: String?
    var fullName: String?
    var distanceAway: Double?
    var memberGroups: [Group]?
    var managedGroups: [Group]?
}




