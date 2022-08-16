//
//  FriendsView.swift
//  blinkUP-Demo
//
//  Created by David Malicke on 8/10/22.
//

import SwiftUI

struct FriendsListView: View {
    @StateObject var vm = FriendsListViewModel()
    
    var body: some View {
        VStack {
            Text("\(vm.friends.count) Friends").bold()
            List {
                Section(header: CustomHeaderView(text: "Hi")) {
                    ForEach(vm.friends, id: \.self) { friend in
                        HStack(spacing: 0) {
                            FriendRow(friend: friend)
                            CustomNavLink(destination: FriendDetailView(friend: friend)) {
                                EmptyView()
                            }
                            .frame(width: 0)
                            .opacity(0)
                        }
                        .listRowBackground(Color.clear)
                        .listRowInsets(EdgeInsets(
                            top: 10,
                            leading: 0,
                            bottom: 0,
                            trailing: 0))
                    }
                }
                .listRowSeparator(.hidden)
                .textCase(nil)
                
                // ------ New Section ------ //
            }
            .listStyle(.inset)
        }
        .navigationBarTitle("")
        .navigationBarHidden(true)
        .onAppear { vm.getFriends() }
    }
}

struct FriendsView_Previews: PreviewProvider {
    static var previews: some View {
        FriendsListView()
    }
}

struct CustomHeaderView: View {
    var text: String
    
    var body: some View {
        HStack(alignment: .center) {
            Spacer()
            Text(text)
                .font(.headline)
                .fontWeight(.bold)
                .foregroundColor(.black)
            //    .padding(.top, -20)
            Spacer()
        }
    }
}
