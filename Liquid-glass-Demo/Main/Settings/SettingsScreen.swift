//
//  SettingsScreen.swift
//  Liquid-glass-Demo
//
//  Created by Mahmoud Aoata on 02/10/2025.
//

import SwiftUI

struct SettingsScreen: View {
    @State private var showUserProfileSheet: Bool = false
    @Namespace private var animationNamespaceSheet
    
    var body: some View {

        NavigationStack {
            ZStack {
                LinearGradient(gradient: Gradient(colors: [.purple.opacity(0.2), .blue.opacity(0.1)]), startPoint: .top, endPoint: .bottom)
                
                VStack {
                    
                    Button {
                        // action
                    } label: {
                        VStack {
                            HStack {
                                Image(systemName: "globe")
                                Text("Language")
                                Spacer()
                            }
                            .foregroundStyle(Color.purple)
                            .padding(16)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            Divider()
                            HStack {
                                Text("You can select your language here.")
                                    .foregroundStyle(Color.gray)
                                    .padding()
                                Spacer()
                            }

                        }
                    }
                    .buttonStyle(.borderedProminent)
                    .buttonBorderShape(.roundedRectangle)
                    .tint(.white)              // makes the fill white (removes gray)
                    .padding(.horizontal)
                }
                
            }
            .edgesIgnoringSafeArea(.all)
            .sheet(isPresented: $showUserProfileSheet,
                   content: {
                UserProfileSheet()
                    .navigationTransition(.zoom(sourceID: "transition-profile-id", in: animationNamespaceSheet))
            })
            
            .toolbar {
                // tool bar item
                ToolbarItem(placement: .topBarTrailing) {
                    // user system image icon
                    Button {
                        showUserProfileSheet.toggle()
                    } label: {
                        // system image user icon
                        Image(systemName: "person.crop.circle")
                    }
                }
                .matchedTransitionSource(id: "transition-profile-id", in: animationNamespaceSheet)
            }
        }
        
    }
}

#Preview {
    SettingsScreen()
}
