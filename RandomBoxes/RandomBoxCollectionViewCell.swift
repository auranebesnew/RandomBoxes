//
//  RandomBoxCell.swift
//  RandomBoxes
//
//  Created by Arslan Abdullaev on 02.03.2024.
//

import UIKit
import ReactiveSwift

class RandomBoxCollectionViewCell: UICollectionViewCell {
    private var timer: Timer?
    private var numberLabel: UILabel!
    private var initialSize: CGSize = CGSize(width: 60, height: 60)
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupCell()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupCell()
    }
    
    func setupCell() {
        contentView.backgroundColor = UIColor.blue.withAlphaComponent(0.5)
        contentView.layer.cornerRadius = 10
        
        numberLabel = UILabel()
        numberLabel.textAlignment = .center
        numberLabel.textColor = UIColor.white
        contentView.addSubview(numberLabel)
        
        numberLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            numberLabel.centerXAnchor.constraint(equalTo: contentView.centerXAnchor),
            numberLabel.centerYAnchor.constraint(equalTo: contentView.centerYAnchor)
        ])
    }
    
    func startTimer() {
        timer = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { [weak self] _ in
            self?.numberLabel.text = "\(Int.random(in: 1...100))"
        }
        timer?.fire()
    }
    
    func stopTimer() {
        timer?.invalidate()
        timer = nil
    }
}
