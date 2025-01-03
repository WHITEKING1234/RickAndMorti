//
//  RMEndPoint .swift
//  rickAndMorti
//
//  Created by Akbar Roziev on 3/1/25.
//

import Foundation

/// Перечисление конечных точек API для Rick and Morty.
enum RMEndPoint: String {
    /// Конечная точка для получения персонажей.
    case character
    /// Конечная точка для получения локаций.
    case location
    /// Конечная точка для получения эпизодов.
    case episode
}
