//
//  GamesDataModel.swift
//  CPSC357-Steam-App-FINAL
//
//  Created by cpsc on 5/3/21.
//

import Foundation

struct GameResponse: Decodable{
    var response: GamesLibrary
}

struct GamesLibrary:Decodable{
    var library: [GamesDetail]
}

struct GamesDetail:Decodable{
    var name: String
}
