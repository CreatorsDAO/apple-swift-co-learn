//
//  NavigationView.swift
//  SwiftColearning01
//
//  Created by Race Li on 2024/9/25.
//

import SwiftUI

struct NavigationView: View {
    var body: some View {
        NavigationStack {
            List {
                NavigationLink {
                    ProfileView()
                } label: {
                    Text("hello")
                }

                NavigationLink(destination: DemoView(), label: { Text("Demo View") })
                
                NavigationLink(destination: DemoView()) {
                    Text("Demo View")
                }
                
                NavigationLink(destination: Text("New Text").font(.largeTitle)) {
                    Text("Demo View")
                }

            }
            .navigationTitle("My Profile")
        }
    }
}

#Preview {
    NavigationView()
}
