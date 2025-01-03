//
//  RMService.swift
//  rickAndMorti
//
//  Created by Akbar Roziev on 3/1/25.
//

import Foundation

/// Сервис для выполнения сетевых запросов.
final class RMService {
    /// Единственный экземпляр RMService (реализация Singleton).
    static let shared = RMService()
    
    /// Приватный инициализатор, чтобы предотвратить создание новых экземпляров.
    private init() {}
    
    /// Выполняет сетевой запрос.
    /// - Parameters:
    ///   - request: Объект запроса, содержащий информацию о запросе.
    ///   - completion: Замыкание, которое вызывается после завершения выполнения запроса.
    public func execute(_ request: RMRequest, completion: @escaping () -> Void) {
        // Логика выполнения запроса
        
    }
}
