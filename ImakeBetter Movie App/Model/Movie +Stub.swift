//
//  Movie +Stub.swift
//  ImakeBetter Movie App
//
//  Created by Quasar on 16.11.2023.
//

import Foundation

extension Movie {
    static var stubbedMovies: [Movie] {
        let response: MovieResponse? = try? Bundle.main.loadAndDecodeJson(filename: "movie_list")
        return response!.results
    }

    static var stubbedMovie: Movie {
        stubbedMovies[5]
    }
}

extension Bundle {
    func loadAndDecodeJson<T: Decodable>(filename: String) throws -> T? {
        guard let url = self.url(forResource: filename, withExtension: "json") else {
            return nil
        }
        let data = try Data(contentsOf: url)
        let jsonDecoder = Utils.jsonDecoder
        let decodedModel = try jsonDecoder.decode(T.self, from: data)
        return decodedModel
    }

}
