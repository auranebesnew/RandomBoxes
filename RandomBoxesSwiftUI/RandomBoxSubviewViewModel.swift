//
//  RandomBoxSubviewViewModel.swift
//  RandomBoxesSwiftUI
//
//  Created by Arslan Abdullaev on 02.03.2024.
//

import Foundation

class RandomBoxSubviewViewModel: ObservableObject {
    @Published private(set) var number: Int = 0

    private var timer: Timer?
    
    init() {
        startTimer()
    }

    deinit {
        stopTimer()
    }

    private func startTimer() {
        timer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { [weak self] _ in
            self?.updateRandomNumber()
        }
    }

    private func stopTimer() {
        timer?.invalidate()
        timer = nil
    }

    private func updateRandomNumber() {
        number = Int.random(in: 1...10)
    }
}
