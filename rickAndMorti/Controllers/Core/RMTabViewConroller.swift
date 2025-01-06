//
//  RMTabViewConroller.swift
//  rickAndMorti
//
//  Created by Akbar Roziev on 6/1/25.
//

import UIKit

final class RMTabViewConroller: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpTabs()
    }
    /// Настраивает вкладки приложения с необходимыми контроллерами, стилями и атрибутами.
    func setUpTabs() {
        // Создание контроллера для отображения персонажей.
        let characterVC = RMCharactersViewController()
        characterVC.navigationItem.largeTitleDisplayMode = .automatic
        
        // Установка цвета текста вкладок для нормального и выбранного состояния.
        let normalAttributes: [NSAttributedString.Key: Any] = [.foregroundColor: UIColor.black]
        let selectedAttributes: [NSAttributedString.Key: Any] = [.foregroundColor: UIColor.black]
        UITabBarItem.appearance().setTitleTextAttributes(normalAttributes, for: .normal)
        UITabBarItem.appearance().setTitleTextAttributes(selectedAttributes, for: .selected)
        
        // Установка цвета выделения вкладки.
        UITabBar.appearance().tintColor = UIColor.black
        
        // Оборачивание контроллера в UINavigationController.
        let nav1 = UINavigationController(rootViewController: characterVC)
        nav1.tabBarItem = UITabBarItem(title: "Character", image: UIImage(systemName: "figure.wave"), tag: 1)
        
        // Включение большого заголовка для всех навигационных контроллеров.
        for nav in [nav1] {
            nav.navigationBar.prefersLargeTitles = true
        }
        
        // Установка настроенных контроллеров как вкладок.
        setViewControllers([nav1], animated: true)
    }
}
