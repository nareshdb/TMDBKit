
Pod::Spec.new do |s|
  s.name             = 'MovieNetworkSDK'
  s.version          = '1.0.0'
  s.summary          = 'A network SDK for TMDB API integration.'
  s.description      = 'This SDK provides network functionalities to interact with the TMDB API.'
  s.homepage         = 'https://github.com/your-repo/MovieNetworkSDK'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Naresh Bhadresha' => 'naresh@example.com' }
  s.source           = { :git => 'https://github.com/your-repo/MovieNetworkSDK.git', :tag => s.version.to_s }
  s.platform         = :ios, '13.0'
  s.source_files     = 'Sources/**/*.{swift,h}'
  s.exclude_files    = 'Sources/Exclude'
  s.swift_version    = '5.3'
  s.dependency       = 'Alamofire', '~> 5.2'
end
