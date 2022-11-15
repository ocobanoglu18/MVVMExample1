//
//  PlayerModel.swift
//  MVVM Example
//
//  Created by Adnan Cobanoglu on 15.11.2022.
//

import Foundation
struct PlayerModel: Identifiable,Codable{
    var id=UUID()
    var name:String
    var surname:String
    var overall:String
    
    static var examplePlayer=PlayerModel(name: "Lionell", surname: "Messi", overall: "94")
    
}
