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

struct Movie: Decodable, Identifiable {

       let id: Int
       let title: String
       let backdropPath: String?
       let posterPath: String?
       let overview: String
       let voteAverage: Double
       let voteCount: Int
       let runtime: Int?
       let releaseDate: String?


    var posterURL: URL {
        return URL(string: "https://image.tmdb.org/t/p/w500\(posterPath ?? "")")!
    }
}

