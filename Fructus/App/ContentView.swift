//
//  ContentView.swift
//  Fructus
//
//  Created by Kyo on 3/30/21.
//

import SwiftUI

struct ContentView: View {
    // MARK:- Properties
    var fruits: [Fruit] = fruitData
    
    // MARK:- Body
    var body: some View {
        NavigationView {
            List {
                ForEach(fruits.shuffled()) { item in
                    NavigationLink(
                        destination: FruitDetailView(fruit: item)) {
                        FruitRowView(fruit: item)
                            .padding(.vertical, 4)
                    }
                }
            }//: List
            .navigationTitle("Fruits")
        }//: Navigation
    }
}

// MARK:- Preview
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(fruits: fruitData)
            .previewDevice("iPhone 11 Pro")
    }
}
