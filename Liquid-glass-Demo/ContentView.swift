//
//  ContentView.swift
//  Liquid-glass-Demo
//
//  Created by Mahmoud Aoata on 01/10/2025.
//

import SwiftUI

struct ContentView: View {
    
    @State private var selectedTab: Int = 0
    @State private var text: String = ""
    
    var body: some View {
        
        TabView {
            
            Tab("Home", systemImage: "house.fill") {
                HomeScreen()
            }
            
            Tab("Explore", systemImage: "sparkles") {
                StatsScreen()
            }
            
            Tab("Settings", systemImage: "gearshape.fill") {
                SettingsScreen()
            }
            
            Tab(role: .search) {
                NavigationStack {
                    SearchTabContent()
                }
            }
            
            
        }
        .searchable(text: $text)
    }
}

#Preview {
    ContentView()
}
