//
//  DetailNoteView.swift
//  NotesApp Watch App
//
//  Created by tulio.rangel on 30/12/22.
//

import SwiftUI

struct DetailNoteView: View {
    
    let note: Note
    
    var body: some View {
        VStack {
            Text(note.title).font(.system(size: 20))
            Spacer()
            Text(note.creationDate).font(.system(size: 12)).foregroundColor(.gray)
        }
    }
}

struct DetailNoteView_Previews: PreviewProvider {
    static var previews: some View {
        DetailNoteView(note: Note(title: "Hola nota"))
    }
}
