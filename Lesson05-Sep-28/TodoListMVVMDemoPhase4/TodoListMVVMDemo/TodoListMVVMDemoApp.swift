//
//  TodoListMVVMDemoApp.swift
//  TodoListMVVMDemo
//
//  Created by Race Li on 2024/9/28.
//

import SwiftUI
import SwiftData

@main
struct TodoListMVVMDemoApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .modelContainer(for: Todo.self)  // 配置 ModelContainer
        }
    }
}
