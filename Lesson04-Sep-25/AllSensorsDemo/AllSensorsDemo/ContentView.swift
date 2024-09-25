//
//  ContentView.swift
//  AllSensorsDemo
//
//  Created by Race Li on 2024/9/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            RecordingView()
                .tabItem {
                    Label("录音", systemImage: "mic.fill")
                }
            
            LocationView()
                .tabItem {
                    Label("GPS", systemImage: "location.fill")
                }
            
//            AccelerometerView()
//                .tabItem {
//                    Label("加速度计", systemImage: "waveform.path.ecg")
//                }
        }
    }
}

#Preview {
    ContentView()
}
