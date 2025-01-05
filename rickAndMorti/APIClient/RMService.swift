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
    
    enum RMServiceError: Error {
        case failedCreateRequest
        case failedToGetData
    }
    /// Выполняет сетевой запрос.
    /// - Parameters:
    ///   - request: Объект запроса, содержащий информацию о запросе.
    ///   - completion: Замыкание, которое вызывается после завершения выполнения запроса.
    ///   - type: Тип ожидаемого ответа, который должен соответствовать протоколу `Codable`.
    public func execute
    <T: Codable>(_ request: RMRequest,
                 expecting type: T.Type,
                 completion: @escaping (Result <T, Error>) -> Void) {
        // Логика выполнения запроса
        guard let urlRequest = self.request(from: request) else {
            completion(.failure(RMServiceError.failedCreateRequest))
            return
        }
        
        let task = URLSession.shared.dataTask(with: urlRequest) { data, _, error in
            guard let data = data, error == nil else {
                completion(.failure(error ?? RMServiceError.failedToGetData))
                return
            }
            
            do {
                let result = try JSONDecoder().decode(type.self, from: data)
                completion(.success(result))
            }
            catch {
                completion(.failure(error))
            }
        }
        task.resume()
    }
    
    // MARK: - Private
    
    private func request(from request: RMRequest) -> URLRequest? {
        guard let url = request.url else { return nil }
        var request = URLRequest(url: url)
        request.httpMethod = request.httpMethod
        return request
    }
}
