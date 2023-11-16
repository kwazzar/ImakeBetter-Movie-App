//
//  Movie.swift
//  ImakeBetter Movie App
//
//  Created by Quasar on 15.11.2023.
//

import Foundation


struct MovieResponse: Decodable {
    let page: Int
    let results: [Movie]
}

struct Movie: Decodable {

    let id: Int
    let title: String
    let backDropPath: String?
    let overview: String
    let voteAvarage: Double
    let voteCount: Int
    let runtime: Int?
}
