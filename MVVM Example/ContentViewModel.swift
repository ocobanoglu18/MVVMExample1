//
//  ContentViewModel.swift
//  MVVM Example
//
//  Created by Adnan Cobanoglu on 15.11.2022.
//

import Foundation
import SwiftUI
extension ContentView{
    @MainActor class ViewModel: ObservableObject{
        @Published var isTurnedOn:Bool=true
        @Published var playerCount=0
        @Published var playerList=[PlayerModel]()
        
        func increment(){
            playerCount=playerCount+1
        }
        
        func addItem(){
            let randomPlayersName=["Ronaldo", "Beckham","Mbappe","Alex de Souza"]
            let randomPlayersSurname=["Cristiano", "David","Killian","Souza"]
            let randomPlayersOverall=["92", "93","89","90"]
            
            let playerName=randomPlayersName.randomElement()!
            let playerSurName=randomPlayersSurname.randomElement()!
            let playerOverall=randomPlayersOverall.randomElement()!
            
            
            let newPlayer=PlayerModel(name: playerName, surname: playerSurName, overall: playerOverall)
            
            withAnimation {
                playerList.insert(newPlayer, at: 0)
            }
        }
    }
}
