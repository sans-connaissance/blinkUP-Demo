//
//  GroupsView.swift
//  blinkUP-Demo
//
//  Created by David Malicke on 8/10/22.
//

import SwiftUI

struct GroupsListView: View {
    @StateObject var vm = GroupsListViewModel()
    
    var body: some View {
        VStack {
            List {
                ForEach(vm.groups, id: \.self) { group in
                    HStack(spacing:0) {
                      GroupRow(group: group)
                        CustomNavLink(destination: GroupDetailView(group: group)) {
                            EmptyView()
                        }
                        .frame(width:0)
                        .opacity(0)
                    }
                }
                .listRowSeparatorTint(.clear)
            }
            
            .listStyle(.grouped)
        }
        .customNavBarisHidden(true)
        //        .navigationBarTitle("")
        //        .navigationBarHidden(true)
        .onAppear{vm.getGroups()}
    }
}

struct GroupsView_Previews: PreviewProvider {
    static var previews: some View {
        GroupsListView()
    }
}
