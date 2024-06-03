# MovieNetworkSDK API Documentation

## Overview
MovieNetworkSDK is a comprehensive SDK for interacting with The Movie Database (TMDb) API, providing methods to fetch movie and TV show data, search for content, and more.

## Getting Started
To get started, install the SDK via Cocoapods or Swift Package Manager. Import the SDK and initialize the APIClient.

## Installation
### Cocoapods
Add the following to your Podfile:
pod 'MovieNetworkSDK'

### Swift Package Manager
Add the following to your Package.swift:
```swift
.package(url: "https://github.com/your-repo/MovieNetworkSDK.git", from: "1.0.0")```

## Usage

### Fetching Latest Movies
APIClient.shared.fetch(MovieEndpoints.latest)
    .sink(receiveCompletion: { completion in
        if case .failure(let error) = completion {
            print("Error: \\(error)")
        }
    }, receiveValue: { (response: MovieResponse) in
        print(response.results)
    })
    .store(in: &cancellables)


### Fetching Popular Movies
APIClient.shared.fetch(MovieEndpoints.popular)
    .sink(receiveCompletion: { completion in
        if case .failure(let error) = completion {
            print("Error: \\(error)")
        }
    }, receiveValue: { (response: MovieResponse) in
        print(response.results)
    })
    .store(in: &cancellables)

Fetching Movie Details
APIClient.shared.fetch(MovieEndpoints.details(id: 123))
    .sink(receiveCompletion: { completion in
        if case .failure(let error) = completion {
            print("Error: \\(error)")
        }
    }, receiveValue: { (movie: Movie) in
        print(movie)
    })
    .store(in: &cancellables)

