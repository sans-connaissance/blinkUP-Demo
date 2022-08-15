//
//  CustomNavBarPreferenceKeys.swift
//  blinkUP-Demo
//
//  Created by David Malicke on 8/14/22.
//

import Foundation
import SwiftUI

//@State private var showBackButton: Bool = true
//@State private var title: String = "Title"
//@State private var subTitle: String? = "subtitle"


struct CustomNavBarTitlePreferenceKey: PreferenceKey {
    
    static var defaultValue: String = ""
    
    static func reduce(value: inout String, nextValue: () -> String) {
        value = nextValue()
    }
}

struct CustomNavBarSubTitlePreferenceKey: PreferenceKey {
    
    static var defaultValue: String? = nil
    
    static func reduce(value: inout String?, nextValue: () -> String?) {
        value = nextValue()
    }
}

struct CustomNavBarBackButtonHiddenPreferenceKey: PreferenceKey {
    
    static var defaultValue: Bool = false
    
    static func reduce(value: inout Bool, nextValue: () -> Bool) {
        value = nextValue()
    }
}

struct CustomNavBarIsHiddenPreferenceKey: PreferenceKey {
    
    static var defaultValue: Bool = false
    
    static func reduce(value: inout Bool, nextValue: () -> Bool) {
        value = nextValue()
    }
}

struct CustomNavBarIsTypePreferenceKey: PreferenceKey {
    
    static var defaultValue: NavType = .friend
    
    static func reduce(value: inout NavType, nextValue: () -> NavType) {
        value = nextValue()
    }
}

struct CustomNavBarGroupImagePreferenceKey: PreferenceKey {
    
    static var defaultValue: String = ""
    
    static func reduce(value: inout String, nextValue: () -> String) {
        value = nextValue()
    }
}

struct CustomNavBarMemberCountPreferenceKey: PreferenceKey {
    
    static var defaultValue: Int = 0
    
    static func reduce(value: inout Int, nextValue: () -> Int) {
        value = nextValue()
    
    }
}

struct CustomNavBarMeetUpCountPreferenceKey: PreferenceKey {
    
    static var defaultValue: Int = 0
    
    static func reduce(value: inout Int, nextValue: () -> Int) {
        value = nextValue()
    
    }
}

extension View {
    
    func customNavigationTitle(_ title: String) -> some View {
        preference(key: CustomNavBarTitlePreferenceKey.self, value: title)
    }
    
    func customNavigationSubTitle(_ subTitle: String?) -> some View {
        preference(key: CustomNavBarSubTitlePreferenceKey.self, value: subTitle)
    }
    
    func customNavBarBackButtonHidden(_ hidden: Bool) -> some View {
        preference(key: CustomNavBarBackButtonHiddenPreferenceKey.self, value: hidden)
    }
    
    func customNavBarisHidden(_ hidden: Bool) -> some View {
        preference(key: CustomNavBarIsHiddenPreferenceKey.self, value: hidden)
    }
    
    func customNavBarType(_ navType: NavType) -> some View {
        preference(key: CustomNavBarIsTypePreferenceKey.self, value: navType)
    }
    
    func customNavBarGroupImage(_ image: String) -> some View {
        preference(key: CustomNavBarGroupImagePreferenceKey.self, value: image)
    }
    
    func customNavBarGroupMemberCount(_ count: Int) -> some View {
        preference(key: CustomNavBarMemberCountPreferenceKey.self, value: count)
    }
    
    func customNavBarGroupMeetUpCount(_ count: Int) -> some View {
        preference(key: CustomNavBarMeetUpCountPreferenceKey.self, value: count)
    }
    
    
    func customNavBarItems(title: String = "", subTitle: String? = nil, backButtonHidden: Bool = false) -> some View {
        self
            .customNavigationTitle(title)
            .customNavigationSubTitle(subTitle)
            .customNavBarBackButtonHidden(backButtonHidden)
        
    }
    
}

