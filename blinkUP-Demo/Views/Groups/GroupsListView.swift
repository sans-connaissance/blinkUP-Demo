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
                    GroupRow(group: group)
                }
                .listRowSeparatorTint(.clear)

                
            }
            .listStyle(.grouped)
        }
        .navigationBarTitle("")
        .navigationBarHidden(true)
        .onAppear{vm.getGroups()}
    }
}

struct GroupsView_Previews: PreviewProvider {
    static var previews: some View {
        GroupsListView()
    }
}
