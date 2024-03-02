//
//  RandomBoxSection.swift
//  RandomBoxesSwiftUI
//
//  Created by Arslan Abdullaev on 02.03.2024.
//

import SwiftUI

struct RandomBoxSection: View {
    private let itemsPerSection = Int.random(in: 10...50)
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHStack(spacing: 0) {
                ForEach(0..<itemsPerSection, id: \.self) { index in
                    Button {} label: {
                        RandomBoxSubview()
                            .padding(10)
                    }.buttonStyle(BoxButtonStyle())
                }
            }
        }
    }
}
