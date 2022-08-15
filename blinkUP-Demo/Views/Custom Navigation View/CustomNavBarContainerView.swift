//
//  CustomNavBarContainerView.swift
//  blinkUP-Demo
//
//  Created by David Malicke on 8/14/22.
//

import SwiftUI

struct CustomNavBarContainerView<Content: View>: View {
    
    let content: Content
    @State private var showBackButton: Bool = true
    @State private var title: String = ""
    @State private var subTitle: String? = nil
    @State private var isHidden: Bool = false
    @State private var navType: NavType = .friend
    @State private var image: String = "person.fill"
    @State private var memberCount: Int = 0
    @State private var meetUpCount: Int = 0
    
    init(@ViewBuilder content: () -> Content) {
        self.content = content()
        
    }
    
    var body: some View {
        VStack(spacing: 0) {
            CustomNavBarView(showBackButton: showBackButton, title: title, subTitle: subTitle, isHidden: isHidden, navType: navType, image: image, memberCount: memberCount, meetUpCount: meetUpCount)
            content
                .frame(maxWidth: .infinity, maxHeight: .infinity)
        }
        .onPreferenceChange(CustomNavBarTitlePreferenceKey.self) { value in
            self.title = value
        }
        .onPreferenceChange(CustomNavBarSubTitlePreferenceKey.self) { value in
            self.subTitle = value
        }
        .onPreferenceChange(CustomNavBarBackButtonHiddenPreferenceKey.self) { value in
            self.showBackButton = !value
        }
        .onPreferenceChange(CustomNavBarIsHiddenPreferenceKey.self) { value in
            self.isHidden = value
        }
        .onPreferenceChange(CustomNavBarIsTypePreferenceKey.self) { value in
            self.navType = value
        }
        .onPreferenceChange(CustomNavBarGroupImagePreferenceKey.self) { value in
            self.image = value
        }
        .onPreferenceChange(CustomNavBarMemberCountPreferenceKey.self) { value in
            self.memberCount = value
        }
        .onPreferenceChange(CustomNavBarMeetUpCountPreferenceKey.self) { value in
            self.meetUpCount = value
        }
        
    }
}

struct CustomNavBarContainerView_Previews: PreviewProvider {
    static var previews: some View {
        CustomNavBarContainerView {
            ZStack {
                Color.green.ignoresSafeArea()
                
                Text("Hello World")
                    .foregroundColor(.white)
                    .customNavigationTitle("This is it!")
                    .customNavigationSubTitle("oh yeah!")
            }
        }
    }
}
