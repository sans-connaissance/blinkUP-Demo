//
//  GroupRow.swift
//  blinkUP-Demo
//
//  Created by David Malicke on 8/10/22.
//

import SwiftUI

struct GroupRow: View {
    var group: GroupViewModel
    
    var body: some View {
        VStack {
            HStack(spacing: 10) {
                ImageViewGroup(image: group.image)
                VStack(alignment: .leading, spacing: 5) {
                    Text(group.name).font(.body)
                    Text(group.shortDescription).font(.footnote)
                }.foregroundColor(.white)
                Spacer()
                HStack(alignment:.center) {
                    VStack {
                        Text("\(group.members.count)").bold()
                            .foregroundColor(.white)
                        Text("Members")
                            .font(.footnote)
                            .foregroundColor(.white)
                    }
                    
                }
                Image(systemName: "chevron.right")
                    .resizable()
                    .frame(width: 15.0, height: 25.0)
                    .foregroundColor(.white)
                
            }
            .padding(10)
            .background(.cyan)
            .clipShape(RoundedRectangle(cornerRadius: 5.0, style: .continuous))
        }
    }
}

struct GroupRow_Previews: PreviewProvider {
    static var previews: some View {
        let examples = mockGroups.map(GroupViewModel.init)
        GroupRow(group: examples[0])
    }
}

struct ImageViewGroup: View {
    let image: String
    
    var body: some View {
        ZStack {
            Circle()
                .frame(width: 55.0, height: 55.0)
                .foregroundColor(.white)
            Image(systemName: image)
                .resizable()
                .scaledToFit()
                .frame(width: 25.0, height: 25.0)
                .padding()
                .clipShape(Circle())
                .shadow(radius: 1)
            
            
        }
    }
}
