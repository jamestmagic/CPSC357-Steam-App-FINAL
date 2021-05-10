//
//  GameRequest.swift
//  CPSC357-Steam-App-FINAL
//
//  Created by cpsc on 5/3/21.
//

import Foundation


enum GameError: Error{
    case noDataAvailable
    case canNotProcessData
}

struct GameRequest{
    let resourceURL:URL
    let API_KEY = "D35534935ACE75DAF05B1EA158A0EC0A"
    
    init(steamID64:String){
        let resourceString = "http://api.steampowered.com/IPlayerService/GetOwnedGames/v0001/?key=\(API_KEY)&steamid=\(steamID64)&format=json"
        guard let resourceURL = URL(string: resourceString) else {fatalError()}
        
        self.resourceURL = resourceURL
    }
    
    func getGames (completion: @escaping(Result<[GamesDetail], GameError>) -> Void){
        let dataTask = URLSession.shared.dataTask(with: resourceURL) {data, _, _ in
            guard let jsonData = data else {
                completion(.failure(.noDataAvailable))
                return
            }
            do{
                let decoder = JSONDecoder()
                print("decoder")
                let gamesResponse = try decoder.decode(GameResponse.self, from: jsonData)
                print("gamesresponse")
                let gameDetails = gamesResponse.response.library
                print("gameDetails")
                completion(.success(gameDetails))
            }catch{
                //print("DECODER DIDNT WORK ")
                completion(.failure(.canNotProcessData))
            }
        }
        dataTask.resume()
    }
}
