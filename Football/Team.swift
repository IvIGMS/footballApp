//
//  Team.swift
//  Football
//
//  Created by Iván Frías on 11/7/22.
//

import Foundation

struct Team {
    var name: String
    var player: [Player]
}

let teams: [Team] = [
    Team(name: "Real Madrid", player: realMadridPlayers),
    Team(name: "Manchester City", player: manchesterCityPlayers),
    Team(name: "FC Barcelona", player: fcBarcelonaPlayers)
]
