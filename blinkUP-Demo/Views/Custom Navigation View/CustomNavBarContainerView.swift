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
    
    init(@ViewBuilder content: () -> Content) {
        self.content = content()
        
    }
    
    var body: some View {
        VStack(spacing: 0) {
            CustomNavBarView(showBackButton: showBackButton, title: title, subTitle: subTitle)
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
