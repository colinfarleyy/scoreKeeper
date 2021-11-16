//
//  SinglesView.swift
//  ScoreKeeper
//
//  Created by Student on 11/10/21.
//

import SwiftUI

var doublesPlayerNames = [""]
struct DoublesView: View {
    
    
    @State private var playerName = ""
    @State private var isEditing0 = false
    @State private var isEditing1 = false
    @State private var isEditing2 = false
    @State private var isEditing3 = false
    var body: some View {
        Form{
            Section(header: Text("Team One")) {
        TextField("Please enter player one name", text: $playerName) { isEditing in
            self.isEditing0 = isEditing
        }
        onCommit: {
            doublesPlayerNames.append(playerName)
        }
                TextField("Please enter player two name", text: $playerName) { isEditing in
                    self.isEditing1 = isEditing
                }
                onCommit: {
                    doublesPlayerNames.append(playerName)
                }
            }
            Section(header: Text("Team Two")) {
                TextField("Please enter player one name", text: $playerName) { isEditing in
                    self.isEditing2 = isEditing
                }
                onCommit: {
                    doublesPlayerNames.append(playerName)
                }
                TextField("Please enter player two name", text: $playerName) { isEditing in
                    self.isEditing3 = isEditing
                }
                onCommit: {
                    doublesPlayerNames.append(playerName)
                }
    }
    }
    }
}

struct DoublesView_Previews: PreviewProvider {
    static var previews: some View {
        DoublesView()
    }
}

