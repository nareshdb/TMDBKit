# MovieNetworkSDK Usage Guide

## Overview
This guide provides examples of how to use the MovieNetworkSDK to interact with the TMDb API.

## Fetching Movies
### Latest Movies
```swift
APIClient.shared.fetch(MovieEndpoints.latest)
    .sink(receiveCompletion: { completion in
        if case .failure(let error) = completion {
            print("Error: \\(error)")
        }
    }, receiveValue: { (response: MovieResponse) in
        print(response.results)
    })
    .store(in: &cancellables)```

### Popular Movies
APIClient.shared.fetch(MovieEndpoints.popular)
    .sink(receiveCompletion: { completion in
        if case .failure(let error) = completion {
            print("Error: \\(error)")
        }
    }, receiveValue: { (response: MovieResponse) in
        print(response.results)
    })
    .store(in: &cancellables)


### Movie Details
APIClient.shared.fetch(MovieEndpoints.details(id: 123))
    .sink(receiveCompletion: { completion in
        if case .failure(let error) = completion {
            print("Error: \\(error)")
        }
    }, receiveValue: { (movie: Movie) in
        print(movie)
    })
    .store(in: &cancellables)

## Fetching TV Shows

### Latest TV Shows
APIClient.shared.fetch(TVShowEndpoints.latest)
    .sink(receiveCompletion: { completion in
        if case .failure(let error) = completion {
            print("Error: \\(error)")
        }
    }, receiveValue: { (response: TVShowResponse) in
        print(response.results)
    })
    .store(in: &cancellables)

### Popular TV Shows
APIClient.shared.fetch(TVShowEndpoints.popular)
    .sink(receiveCompletion: { completion in
        if case .failure(let error) = completion {
            print("Error: \\(error)")
        }
    }, receiveValue: { (response: TVShowResponse) in
        print(response.results)
    })
    .store(in: &cancellables)

## TV Show Details
APIClient.shared.fetch(TVShowEndpoints.details(id: 123))
    .sink(receiveCompletion: { completion in
        if case .failure(let error) = completion {
            print("Error: \\(error)")
        }
    }, receiveValue: { (tvShow: TVShow) in
        print(tvShow)
    })
    .store(in: &cancellables)
