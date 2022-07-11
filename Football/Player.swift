//
//  Player.swift
//  Football
//
//  Created by Iván Frías on 11/7/22.
//

import Foundation

struct Player {
    var name: String
    var age: Int
    var position: Position
    var image: String
}

let realMadridPlayers: [Player] = [
    Player(name: "Karim Benzema", age: 34, position: .delantero, image: "benzema"),
    Player(name: "Vini Jr", age: 21, position: .delantero, image: "vinicius"),
    Player(name: "Luka Modric", age: 36, position: .mediocentro, image: "modric")
]

let manchesterCityPlayers: [Player] = [
    Player(name: "Kevin De Bruyne", age: 31, position: .mediocentro, image: "deBruyne"),
    Player(name: "Erling Haaland", age: 22, position: .delantero, image: "haaland"),
    Player(name: "Ruben Dias", age: 25, position: .defensa, image: "dias")
]

let fcBarcelonaPlayers: [Player] = [
    Player(name: "Pedri", age: 19, position: .mediocentro, image: "pedri"),
    Player(name: "Aubameyang", age: 33, position: .delantero, image: "aubameyang"),
    Player(name: "Ferran Torres", age: 22, position: .delantero, image: "ferran")
]

enum Position: String {
    case delantero
    case mediocentro
    case defensa
    case portero
}
