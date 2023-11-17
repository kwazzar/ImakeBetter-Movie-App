//
//  MovieService.swift
//  ImakeBetter Movie App
//
//  Created by Quasar on 15.11.2023.
//

import Foundation

protocol MovieService {

    func fetchMovies(from endpoint: MovieListEndpoint, completion: @escaping (Result<MovieResponse, MovieError>) -> ())
    func fetchMovie(id: Int, completion: @escaping (Result<Movie, MovieError>) -> ())
}

enum MovieListEndpoint: String, CaseIterable  {
    case nowPlaying = "now_playing"
    case upcoming
    case topRated = "top_rated"
    case popular

    var description: String {
        switch self {
        case .nowPlaying: return "Now Playing"
        case .upcoming: return "Upcoming"
        case .topRated: return "Top Rated"
        case .popular: return "Popular"
        }
    }
}

enum MovieError: Error, CustomNSError {

case apiError
    case invalidEndpoint
    case invalidResponse
    case noData
    case serialitationError

    var localizedDescription: String {
        switch self {
        case .apiError: return "Failed to fetch data"
        case .invalidEndpoint: return "Invalid endpoint"
        case .invalidResponse: return "Invalid response"
        case .noData: return "No data"
        case .serialitationError: return "Failed to decode data"
        }
    }

    var errorUserInfo: [String : Any] {
        [NSLocalizedDescriptionKey: localizedDescription]
    }
}
