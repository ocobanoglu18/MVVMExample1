//
//  ContentView.swift
//  MVVM Example
//
//  Created by Adnan Cobanoglu on 15.11.2022.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var viewModel=ViewModel()
    var body: some View {
        VStack{
            Toggle("Switch", isOn: $viewModel.isTurnedOn).padding()
            HStack{
                Button("Increment"){
                    viewModel.increment()
                }
                Text("\(viewModel.playerCount)")
            }
            List (viewModel.playerList){ player in
                HStack {
                    Text(player.name)
                    Text(player.surname)
                    Text(player.overall)
                }
                
                
            }
            .listStyle(.plain)
            .background(.thinMaterial)
            Button("Add Player"){
                viewModel.addItem()
            }
        }
        
   
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
