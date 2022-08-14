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
    
    func customNavBarItems(title: String = "", subTitle: String? = nil, backButtonHidden: Bool = false) -> some View {
        self
            .customNavigationTitle(title)
            .customNavigationSubTitle(subTitle)
            .customNavBarBackButtonHidden(backButtonHidden)
        
    }
    
}

