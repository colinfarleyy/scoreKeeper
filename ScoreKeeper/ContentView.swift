//
//  ContentView.swift
//  ScoreKeeper
//
//  Created by Student on 11/2/21.
//

import SwiftUI

let gameModes = ["singles", "doubles"]
let setScores = ["1", "3"]
struct ContentView: View {
    @State private var gameMode = "singles"
   
    var body: some View {
        NavigationView{
        Form {
            Section {
                NavigationLink(
                    destination: SinglesView(),
                    label: {
                        Text("Singles")
                    })
                NavigationLink(
                    destination: DoublesView(),
                    label: {
                        Text("Doubles")
                    })
            }
        
        }
    }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
