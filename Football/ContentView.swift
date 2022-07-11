//
//  Pruebas1.swift
//  SwiftBeta
//
//  Created by Iván Frías on 11/7/22.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        NavigationView {
            List { // Mostramos el listado de los equipos.
                ForEach(teams, id: \.name) { team in
                    NavigationLink(destination: {
                        List { // Mostramos los jugadores de cada equipo.
                            ForEach(team.player, id: \.name) { player in
                                NavigationLink(destination: {
                                    // Datos del Jugador
                                    Form {
                                        Image(player.image)
                                            .resizable()
                                            .scaledToFit()
                                            .frame(width: 100)
                                            .border(Color.gray, width: 2)
                                        Text(player.name)
                                        Text("Edad: \(player.age)")
                                        Text("Posicion: \(player.position.rawValue)")
                                    }
                                }, label: {Text(player.name)})
                            }
                        }
                    }, label: {
                        Text(team.name)
                    })
                }
            }.navigationTitle("Teams")
                .navigationBarItems(trailing: Text("Choose a team"))
        }
    }
}

struct Pruebas1_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

