//
//  GroupDetailView.swift
//  blinkUP-Demo
//
//  Created by David Malicke on 8/13/22.
//

import SwiftUI

struct GroupDetailView: View {
    var group: GroupViewModel
    
    var body: some View {
        Text(group.name)
    }
}

struct GroupDetailView_Previews: PreviewProvider {
    static var previews: some View {
        let examples = mockGroups.map(GroupViewModel.init)
        GroupDetailView(group: examples[0])
    }
}
