//
//  GroupsListViewModel.swift
//  blinkUP-Demo
//
//  Created by David Malicke on 8/10/22.
//

import Foundation

class GroupsListViewModel: ObservableObject {
    @Published var groups: [GroupViewModel] = []
    
    func getGroups() {
        groups = mockGroups.map(GroupViewModel.init)
    }
}
