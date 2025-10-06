//
//  UserProfileSheet.swift
//  Liquid-glass-Demo
//
//  Created by Mahmoud Aoata on 03/10/2025.
//

import SwiftUI

struct UserProfileSheet: View {
    @Environment(\.dismiss) var dismiss
    var body: some View {
        NavigationStack {
            
            VStack {
                Text("UserProfileSheet")
            }
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    Button {
                        dismiss()
                    } label: {
                        Label("Close", systemImage: "xmark")
                    }
                }
            }
        }
    }
}

#Preview {
    UserProfileSheet()
}
