//
//  TabDemoView.swift
//  SwiftColearning01
//
//  Created by Race Li on 2024/9/21.
//

import SwiftUI

struct TabDemoView: View {
    var body: some View {
        TabView {
            // 第一页
            Text("Home")
                .tabItem {
                    Label("Home", systemImage: "house.fill")
                }
            
            // 第二页
            Text("Favorites")
                .tabItem {
                    Label("Favorites", systemImage: "star.fill")
                }
            
            // 第三页
            ProfileView()
                .tabItem {
                    Label("Profile", systemImage: "person.fill")
                }
            
            // 第四页
            StackView()
                .tabItem {
                    Text("hello")
                    Image(systemName: "square.stack")
                }
        }
    }
}

#Preview {
    TabDemoView()
}
