//
//  WeatherManager.swift
//  Clima
//
//  Created by MİZGİN YILDIRAK on 21.01.2024.
//  Copyright © 2024 App Brewery. All rights reserved.
//

import Foundation

struct WeatherManager {
    let weatherURL = "https://api.openweathermap.org/data/2.5/weather?appid=b72eaedf7a501629cbf0ddb74f2f485e&units=metric"
    
    func fetchWeather(cityName: String) {
        let urlString = "\(weatherURL)&q=\(cityName)"
        performRequest(urlString: urlString)
    }
        func performRequest(urlString: String) {
            if let url = URL(string: urlString) {
                let session = URLSession(configuration: .default)
                
                // Give the session a task
                
                let task = session.dataTask(with: url) { (data, response, error) in
                    if error != nil {
                        print(error!)
                        return
                    }
                    
                    if let safeData = data {
                        let dataString = String(data: safeData, encoding: .utf8)
                        self.parseJSON(weatherData: safeData)
                      
                    }
                }
                    // Start the task
                task.resume()
            }
        }
    
    func parseJSON(weatherData: Data) {
        let decoder = JSONDecoder()
        do {
         let decodedData = try decoder.decode(WeatherData.self, from: weatherData)
         let id = decodedData.weather[0].id
         let temp = decodedData.main.temp
         let name = decodedData.name
            
            let weather = WeatherModel(conditionId: id, cityName: name, temperature: temp)
            print(weather.temperatureString)
        } catch {
            print(error)
        }
    }
    

}
