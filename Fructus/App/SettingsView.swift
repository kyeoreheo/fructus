//
//  SettingsView.swift
//  Fructus
//
//  Created by Kyo on 4/5/21.
//

import SwiftUI

struct SettingsView: View {
    // MARK:- Properties
    @Environment(\.presentationMode) var presentationMode
    
    // MARK:- Body
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 20) {
                    Text("Hello, World!")
                }//: VStack
                .navigationBarTitle(Text("Settings"), displayMode: .large)
                .navigationBarItems(trailing:
                    Button(action: {
                        presentationMode.wrappedValue.dismiss()
                    }) {
                        Image(systemName: "xmark")
                    }
                )
                .padding()
            }//: ScrollView
            
        }//: NavigationView
    }
}

// MARK:- Preview
struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
            .preferredColorScheme(.dark)
            .previewDevice("iPhone 11 Pro")
    }
}
