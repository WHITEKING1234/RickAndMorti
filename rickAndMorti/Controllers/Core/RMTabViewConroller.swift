//
//  RMTabViewConroller.swift
//  rickAndMorti
//
//  Created by Mac on 3/1/25.
//

import UIKit

final class RMTabViewConroller: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpTabs()
    }
    func setUpTabs() {
        let characterVC = RMCharactersViewController()
        characterVC.navigationItem.largeTitleDisplayMode = .automatic
        let normalAttributes: [NSAttributedString.Key: Any] = [.foregroundColor: UIColor.black]
        let selectedAttributes: [NSAttributedString.Key: Any] = [.foregroundColor: UIColor.black]
        UITabBarItem.appearance().setTitleTextAttributes(normalAttributes, for: .normal)
        UITabBarItem.appearance().setTitleTextAttributes(selectedAttributes, for: .selected)
        UITabBar.appearance().tintColor = UIColor.black
        let nav1 = UINavigationController(rootViewController: characterVC)
        nav1.tabBarItem = UITabBarItem(title: "Character", image: UIImage(systemName: "figure.wave"), tag: 1)
        for nav in [nav1] {
            nav.navigationBar.prefersLargeTitles = true
        }
        setViewControllers([nav1], animated: true)
    }
}
