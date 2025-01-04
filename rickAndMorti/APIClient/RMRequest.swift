//
//  RMRequest.swift
//  rickAndMorti
//
//  Created by Akbar Roziev on 3/1/25.
//

import Foundation

/// Класс, представляющий сетевой запрос.
final class RMRequest {
    // Здесь можно добавить свойства и методы, необходимые для конфигурации и выполнения запроса.
    private struct Constants {
        static let baseUrl = "https://rickandmortyapi.com/api"
    }
    
    private let endpoint: RMEndPoint
    private let pathComponents: [String]
    private let queryParameters: [URLQueryItem]
    
    /// Строковое представление URL, составленное на основе базового URL, конечной точки (endpoint),
    /// дополнительных компонентов пути (pathComponents) и параметров запроса (queryParameters).
    ///
    /// - Формирует строку URL следующим образом:
    ///   - Добавляет базовый URL.
    ///   - Добавляет значение конечной точки.
    ///   - Добавляет дополнительные компоненты пути, если они существуют.
    ///   - Добавляет параметры запроса в формате `key=value`, если они существуют.
    /// - Пример результата:
    ///   `https://rickandmortyapi.com/api/character/1?name=Rick&status=alive`
    private var urlString: String {
        var string = Constants.baseUrl
        string += "/"
        string += endpoint.rawValue

        if !pathComponents.isEmpty {
            pathComponents.forEach({
                string += "/\($0)"
            })
        }

        if !queryParameters.isEmpty {
            string += "?"
            let argumentString = queryParameters.compactMap({
                guard let value = $0.value else { return nil }
                return "\($0.name)=\(value)"
            }).joined(separator: "&")

            string += argumentString
        }

        return string
    }
    
    public var url: URL? {
        return URL(string: urlString)
    }
    
    /// Метод Запроса
    public let httpMethod = "GET"
    
    public init(endpoint: RMEndPoint,
                pathComponents: [String],
                queryParameters: [URLQueryItem])
    {
        self.endpoint = endpoint
        self.pathComponents = pathComponents
        self.queryParameters = queryParameters
    }
}
