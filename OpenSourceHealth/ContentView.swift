//
//  ContentView.swift
//  OpenSourceHealth
//
//  Created by Kanishk Jain on 10/20/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            BloodTestListView()
                .tabItem {
                    Label("Blood Tests", systemImage: "heart.text.square")
                }
            
            ExerciseLogListView()
                .tabItem {
                    Label("Exercise Logs", systemImage: "figure.walk")
                }
            
            BloodTestGraphView()
                .tabItem {
                    Label("Blood Test Graph", systemImage: "chart.line.uptrend.xyaxis")
                }
        }
    }
}

#Preview {
    ContentView()
}


