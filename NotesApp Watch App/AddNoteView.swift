//
//  AddNote.swift
//  NotesApp Watch App
//
//  Created by tulio.rangel on 28/12/22.
//

import SwiftUI

struct AddNoteView: View {
    
    @State private var text = ""
    @State private var notes = [Note]()
    @Environment(\.presentationMode) var presentation
    
    var body: some View {
        VStack {
            TextField("Nota", text: $text)
            Button("Agregar nota") {
                guard text.isEmpty == false else {
                    return
                }
                let note = Note(title: text)
                notes.append(note)
                Tools.shared.save(array: notes)
                text = ""
                presentation.wrappedValue.dismiss()
            }
        }
        .onAppear(perform: {
            notes = Tools.shared.load()
        })
    }
}

struct AddNoteView_Previews: PreviewProvider {
    static var previews: some View {
        AddNoteView()
    }
}
