//
//  ViewController.swift
//  RandomBoxes
//
//  Created by Arslan Abdullaev on 01.03.2024.
//

import UIKit

class RandomBoxesViewController: UIViewController {
    private lazy var tableView: UITableView = {
        let tableView = UITableView()
        tableView.dataSource = self
        tableView.delegate = self
        tableView.register(RandomBoxTableViewCell.self, forCellReuseIdentifier: "RandomBoxTableViewCell")
        tableView.showsVerticalScrollIndicator = false
        return tableView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupUI()
    }
    
    private func setupUI() {
        view.addSubview(tableView)
        view.backgroundColor = .white
        setupTableView()
    }
    
    private func setupTableView() {
        tableView.translatesAutoresizingMaskIntoConstraints = false
         NSLayoutConstraint.activate([
             tableView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
             tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 22),
             tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -22),
             tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
         ])
    }
}

extension RandomBoxesViewController: UITableViewDataSource, UITableViewDelegate {
    // MARK: - UITableViewDataSource

    func numberOfSections(in tableView: UITableView) -> Int {
        return Int.random(in: 100...500)
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "RandomBoxTableViewCell", for: indexPath) as! RandomBoxTableViewCell

        cell.configureCollectionView()

        return cell
    }

    // MARK: - UITableViewDelegate

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
}
