//
//  MeetUpViewModel.swift
//  blinkUP-Demo
//
//  Created by David Malicke on 8/10/22.
//

import Foundation

struct MeetUpViewModel: Hashable {
    let meetup: MeetUp
    
    var id: Int {
        return meetup.id
    }
    
    var name: String {
        return meetup.name ?? ""
    }
    
    var description: String {
        return meetup.description ?? ""
    }
    
    var numberOfAttendees: Int {
        return meetup.numberOfAttendees ?? 0
    }
}
