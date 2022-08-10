//
//  FriendRow.swift
//  blinkUP-Demo
//
//  Created by David Malicke on 8/10/22.
//

import SwiftUI

struct FriendRow: View {
    var friend: FriendViewModel
    
    var body: some View {
        VStack {
            HStack(spacing: 15) {
                ImageView(image: friend.image)
                VStack(alignment: .leading) {
                    Text(friend.displayName).bold()
                    Text(friend.fullName)
                }.foregroundColor(.white)
                Spacer()
                HStack(alignment:.center) {
                    Text(friend.distanceAway + " mi").bold()
                        .foregroundColor(.white)
                    
                }
                Image(systemName: "chevron.right")
                    .resizable()
                    .frame(width: 15.0, height: 25.0)
                    .foregroundColor(.white)
                
            }
            .padding(10)
            .background(.green)
            .clipShape(RoundedRectangle(cornerRadius: 5.0, style: .continuous))
        }
    }
}

struct ImageView: View {
    let image: String
    
    var body: some View {
        ZStack {
            Circle()
                .frame(width: 55.0, height: 55.0)
                .foregroundColor(.white)
            Image(systemName: image)
                .resizable()
                .frame(width: 25.0, height: 25.0)
                .padding()
                .clipShape(Circle())
                .shadow(radius: 1)


        }
    }
}

struct FriendRow_Previews: PreviewProvider {
    static var previews: some View {
        let examples = mockFriends.map(FriendViewModel.init)
        FriendRow(friend: examples[0])
    }
}
