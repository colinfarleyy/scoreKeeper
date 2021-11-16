//
//  SinglesView.swift
//  ScoreKeeper
//
//  Created by Student on 11/10/21.
//

import SwiftUI
let scoreBank = [0, 15, 30, 40]
let duece = ["deuce", "advantage"]

var playerNames = [""]
struct SinglesView: View {
    
    @State private var setScore = 1
    @State private var playerName = ""
    @State private var isEditing = false
    var body: some View {
        Form{
            Section(header: Text("Player Names")) {
        TextField("Please enter player one name", text: $playerName) { isEditing in
            self.isEditing = isEditing
        }
        onCommit: {
            playerNames.append(playerName)
        }
                TextField("Please enter player two name", text: $playerName) { isEditing in
                    self.isEditing = isEditing
                }
                onCommit: {
                    playerNames.append(playerName)
                }
    }
            Section {
                Picker("How many sets?" , selection: $setScore) {
                                ForEach(setScores, id: \.self) {
                                    Text($0)
                                }
                                }
            }
    }
    }
}

struct SinglesView_Previews: PreviewProvider {
    static var previews: some View {
        SinglesView()
    }
}
