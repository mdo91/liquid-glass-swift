//
//  HomeScreen.swift
//  Liquid-glass-Demo
//
//  Created by Mahmoud Aoata on 02/10/2025.
//

import SwiftUI

struct HomeScreen: View {
    
    @State var isExpanded: Bool = false
    @Namespace private var glassEffectNamespace
    
    var body: some View {
        NavigationStack {
            
            VStack {
                
                HStack {
                    Text("Hello, World")
                        .font(.caption2)
                        .padding()
                        .glassEffect()
                    
                    Text("Hello World")
                        .font(.caption2)
                        .padding()
                        .glassEffect(in: .rect(cornerRadius: 16.0))
                    
                    Text("Hello World")
                        .font(.caption2)
                        .padding()
                        .glassEffect(.regular.tint(.orange).interactive())
                    
                }
                GlassEffectContainer(spacing: 40.0) {
                    HStack(spacing: 40.0) {
                        Image(systemName: "scribble.variable")
                            .frame(width: 80.0, height: 80.0)
                            .font(.system(size: 36))
                            .glassEffect()
                            .glassEffectID("pencil", in: glassEffectNamespace)
                        
                        if isExpanded {
                            
                            Image(systemName: "eraser.fill")
                                .frame(width: 80.0, height: 80)
                                .font(.system(size: 36))
                                .glassEffect()
                                .offset(x:-40.0, y: 0.0)
                                .glassEffectID("earser", in: glassEffectNamespace)
                        }
                        
                    }
                }
                
                Button(action: {
                    withAnimation {
                        isExpanded.toggle()
                    }
                }, label: {
                    Text("toggle")
                })
                .buttonStyle(.glass)
            }
            .background(
                Image("alps")
 
                    .aspectRatio(contentMode: .fill)
                    .edgesIgnoringSafeArea(.bottom)
                
            )
        }
        
        

    }
}

#Preview {
    HomeScreen()
}
