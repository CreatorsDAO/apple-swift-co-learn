//
//  TabsView.swift
//  SwiftColearning01
//
//  Created by Race Li on 2024/9/21.
//

import SwiftUI

struct TabsView: View {
    var body: some View {
        TabView {
            
            NavigationView()
                .tabItem {
                    Text("Navi Demo")
                    Image(systemName: "arrow.left.arrow.right.circle")
                }
            
            ProfileView()
                .tabItem {
                    Text("Home")
                    Image(systemName: "house")
                }
            
            Color.red
                .tabItem {
                    Text("My Favorite Color")
                    Image(systemName: "paintpalette.fill")
                }
            
            StackDemoView()
                .tabItem {
                    Label("My Artwork", systemImage: "photo.artframe")
                }
            
            List {
                Section("This is my title") {
                    HStack {
                        Image(systemName: "pencil.circle.fill")
                            .frame(width: 30)
                        Text("Item 1")
                    }
                    HStack {
                        Image(systemName: "externaldrive.badge.wifi")
                            .frame(width: 30)
                        Text("Item 2")
                    }
                    HStack {
                        Image(systemName: "bookmark.fill")
                            .frame(width: 30)
                        Text("Item 3")
                    }
                }
                
                Section("This is my title") {
                    HStack {
                        Image(systemName: "pencil.circle.fill")
                            .frame(width: 30)
                        Text("Item 1")
                    }
                    HStack {
                        Image(systemName: "externaldrive.badge.wifi")
                            .frame(width: 30)
                        Text("Item 2")
                    }
                    HStack {
                        Image(systemName: "bookmark.fill")
                            .frame(width: 30)
                        Text("Item 3")
                    }
                }

            }.tabItem {
                Label("List", systemImage: "list.bullet")
            }
        }
    }
}

#Preview {
    TabsView()
}
