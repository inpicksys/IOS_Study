//
//  WeatherData.swift
//  Clima
//
//  Created by Misha Strutinsky on 20.11.2020.
//  Copyright © 2020 App Brewery. All rights reserved.
//

import Foundation

struct WeatherData: Codable {
    let name: String
    let weather: [Weather]
    let main: Main
}

struct Main: Codable {
    let temp: Double
    
}

struct Weather: Codable {
    let id: Int
    let description: String
}
