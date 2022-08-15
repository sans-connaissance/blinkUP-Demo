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
        VStack(alignment: .leading) {
            Text(group.name)
                .padding(.leading)
            Text(group.shortDescription)
                .padding(.leading)
            
            List{
                ForEach(group.messages, id: \.self) { message in
                    VStack(alignment:.leading){
                        Text(message.messageText)
                        
                        HStack {
                            Spacer()
                            Text(message.postedBy?.fullName ?? "")
                            
                        }
                    }
                }
            }
            .listStyle(.grouped)
            
        }
        
        .customNavBarisHidden(false)
        .customNavBarType(.group)
        .customNavBarGroupVM(group)
    }
}

struct GroupDetailView_Previews: PreviewProvider {
    static var previews: some View {
        let examples = mockGroups.map(GroupViewModel.init)
        GroupDetailView(group: examples[0])
    }
}
