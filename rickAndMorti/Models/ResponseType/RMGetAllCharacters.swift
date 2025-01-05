//
//  RMGetAllCharacters.swift
//  rickAndMorti
//
//  Created by Akbar Roziev on 5/1/25.
//

import Foundation

struct RMGetAllCharactersResponse: Codable {
    struct Info: Codable {
        let count: Int
        let pages: Int
        let next: String?
        let prev: String?
    }

    let info: Info
    let results: [RMCharacter]
}
