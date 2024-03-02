//
//  ContentView.swift
//  RandomBoxesSwiftUI
//
//  Created by Arslan Abdullaev on 01.03.2024.
//

import SwiftUI

struct ContentView: View {
    private let numberOfSections = Int.random(in: 100...500)
    private let itemSize = CGSize(width: 100, height: 90)
    
    var body: some View {
        NavigationView {
            List(0..<numberOfSections, id: \.self) { section in
                RandomBoxSection()
                    .frame(height: self.itemSize.height)
                    .onAppear {
                        // Handle cell appearance if needed
                    }
            }
            .listStyle(PlainListStyle())
            .navigationTitle(Text("Рандомные боксы :)"))
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
