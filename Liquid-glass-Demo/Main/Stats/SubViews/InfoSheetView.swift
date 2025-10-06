//
//  InfoSheetView.swift
//  Liquid-glass-Demo
//
//  Created by Mahmoud Aoata on 02/10/2025.
//

import SwiftUI

struct InfoSheetView: View {
    @Environment(\.dismiss) var dismiss
    
    @State private var firstName: String = ""
    @State private var lastName: String = ""
    
    @State private var searchText: String = ""
    var body: some View {
        NavigationStack {
            VStack {
                ScrollView {
                    GlassEffectContainer {
                        VStack {
                            Text("Data")
                        }
                    }
                    
                    Group {
                        TextField("Name", text: $firstName)
                        TextField("Last Name", text: $lastName)
                    }
                    
                    .padding()
                }
                .searchable(text: $searchText)
                .searchToolbarBehavior(.minimize)
            }
            .toolbar {
                // close item button
                ToolbarItem(placement: .topBarLeading) {
                    Button {
                        dismiss()
                    } label: {  
                        Image(systemName: "xmark")
                    }
                }
                
                // filter picker
                ToolbarItem(placement: .bottomBar) {
                    Button {
                        
                    } label: {
                        // filter icon
                        HStack {
                            // filter icon
                            Image(systemName: "line.3.horizontal.decrease.circle.fill")
                            Text("Filter")
                        }
                    }
                }
                
                // toolbar spacer
                
                ToolbarSpacer(.flexible, placement: .bottomBar)
                    
                DefaultToolbarItem(kind: .search, placement: .bottomBar)
                
                ToolbarSpacer(.fixed, placement: .bottomBar)
                
                // new message tool bar item
                ToolbarItem(placement: .bottomBar) {
                    Button {
                        
                    } label: {
                        Image(systemName: "square.and.pencil")
                    }
                }
                
            }
        }
    }
}



#Preview {
    InfoSheetView()
}

