//
//  RMCharactersViewController.swift
//  rickAndMorti
//
//  Created by Mac on 3/1/25.
//

import UIKit

final class RMCharactersViewController: BaseViewController {
    
    private let characterView = CharacterView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        title = "Characters"
    }
    
    override func addSubviews() {
        super.addSubviews()
        view.addSubviews(characterView)
    }
    
    override func setupConstrant() {
        super.setupConstrant()
        NSLayoutConstraint.activate([
            characterView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            characterView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            characterView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            characterView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor)
        ])
    }
}
