//
//  MovieListState.swift
//  ImakeBetter Movie App
//
//  Created by Quasar on 16.11.2023.
//

import SwiftUI

class MovieListState: ObservableObject {

    @Published var movies: [Movie]?
    @Published var isLoading: Bool = false
    @Published var error: NSError?

    private let movieService: MovieService

    init(movieService: MovieService = MovieStore.shared) {
        self.movieService = movieService
    }

    func loadMovies(with endpoint: MovieListEndpoint) {
        self.movies = nil
        self.isLoading = true
        self.movieService.fetchMovies(from: endpoint) { [weak self] (result) in
            guard let self = self else { return }
            self.isLoading = false
            print(result)
            switch result {
            case .success(let response):
                self.movies = response.results
                print(response)

            case .failure(let error):
                self.error = error as NSError
                print(error)
            }
        }
    }

}
