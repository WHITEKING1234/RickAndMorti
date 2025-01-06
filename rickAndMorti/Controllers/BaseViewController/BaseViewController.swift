//
//  BaseViewController.swift
//  rickAndMorti
//
//  Created by Akbar Roziev on 6/1/25.
//

import UIKit

class BaseViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addSubviews()
        setupConstrant()
    }
    
    /// Добавляет подвиды в иерархию View.
    func addSubviews() {}
    
    /// Настраивает констрейнты для расположения подвидов.
    func setupConstrant() {}
}

