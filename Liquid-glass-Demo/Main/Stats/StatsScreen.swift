//
//  StatsScreen.swift
//  Liquid-glass-Demo
//
//  Created by Mahmoud Aoata on 02/10/2025.
//

import SwiftUI

struct StatsScreen: View {
    @State private var isSettingsSheetPresented: Bool = false
    @State private var isInfoSheetPresented: Bool = false
    @Namespace private var namespace
    var body: some View {
        
        NavigationStack {
            VStack {
                Text("Buttons")
                    .padding()
                    .glassEffect()
                    .padding(.bottom, 40)
               
                
                
                Button {
                    
                } label: {
                    Text("Prominent")
                }
                .buttonStyle(.glassProminent)
                
                Button {
                    
                } label: {
                    Text("capsule")
                }
                .buttonBorderShape(.capsule)
                .buttonStyle(.glass)

                
                Button {
                    
                } label: {
                    Text("roundedRectangle")
                }
                .buttonStyle(.glass)
                //.buttonSizing(.flexible)
                .buttonBorderShape(.roundedRectangle)
                
                Button {
                    
                } label: {
                    Text("Bordered")
                }
                .buttonStyle(.bordered)
                
                Button {
                    
                } label: {
                    Text("circle")
                        .padding()
                }
                .buttonStyle(.glass)
                .buttonBorderShape(.circle)
            
                
                Spacer()
            }
            .background(
                Image("fuji-mount")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .edgesIgnoringSafeArea(.all)
            )
            .sheet(isPresented: $isSettingsSheetPresented,
                             content: {
                NoteSheetView()
                    .presentationDetents([.medium, .large])
            })
            .fullScreenCover(isPresented: $isInfoSheetPresented, content: {
                InfoSheetView()
                    .navigationTransition(.zoom(sourceID: "transition-id", in: namespace))
            })

            
            .toolbar {
                ToolbarSpacer(.flexible)
                ToolbarItemGroup {
                        Button {
                            isSettingsSheetPresented.toggle()
                        } label: {
                            Image(systemName: "gearshape")

                        }

                }
                
                ToolbarSpacer(.fixed)
                
                ToolbarItem {
                    Button {
                        isInfoSheetPresented.toggle()
                    } label: {
                        Image(systemName: "info")
                    }
                }
                .matchedTransitionSource(id: "transition-id", in: namespace)
            }
        }

    }
}

#Preview {
    StatsScreen()
}
