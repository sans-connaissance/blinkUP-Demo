//
//  Group.swift
//  blinkUP-Demo
//
//  Created by David Malicke on 8/9/22.
//

import Foundation

struct Group: Codable, Identifiable, Hashable {
    var id: Int
    var name: String?
    var image: String?
    var shortDescription: String?
    var longDescription: String?
    var message: [Message]?
    var members: [Friend]?
    var meetUps: [MeetUp]?
}

struct Message: Codable, Identifiable, Hashable {
    var id: Int
    var message: String?
    var likes: Int?
    var postedBy: Friend?
    
}

struct MeetUp: Codable, Identifiable, Hashable {
    var id: Int
    var name: String?
    var description: String?
    var numberOfAttendees: Int?
    
}



