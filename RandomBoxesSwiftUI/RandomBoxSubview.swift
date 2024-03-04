//
//  RandomBoxSubview.swift
//  RandomBoxesSwiftUI
//
//  Created by Arslan Abdullaev on 02.03.2024.
//

import SwiftUI

struct RandomBoxSubview: View {
    @StateObject private var viewModel = RandomBoxSubviewViewModel()
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 10)
                .foregroundColor(.blue.opacity(0.5))
                .frame(width: 60, height: 60)
            
            Text("\(viewModel.number)")
                .foregroundColor(.white)
        }
    }
}
