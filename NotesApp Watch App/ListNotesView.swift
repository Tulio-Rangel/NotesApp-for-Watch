//
//  ListNotesView.swift
//  NotesApp Watch App
//
//  Created by tulio.rangel on 29/12/22.
//

import SwiftUI

struct ListNotesView: View {
    
    @State var notes = [Note]()
    
    var body: some View {
        VStack {
            Text("Notas \(notes.count)")
            List {
                ForEach(0..<notes.count, id: \.self) { i in
                    NavigationLink(
                        destination: DetailNoteView(note: notes[i]),
                        label: {
                            Text(notes[i].title).lineLimit(1)
                        })
                }
                //Para borrar la nota
                .onDelete(perform: delete)
            }
        }
        .onAppear(perform: {
            notes = Tools.shared.load()
        })
    }
    //La función en si para eliminar
    func delete(offsets: IndexSet) {
        withAnimation {
            notes.remove(atOffsets: offsets)
        }
        Tools.shared.save(array: notes)
    }
}

struct ListNotesView_Previews: PreviewProvider {
    static var previews: some View {
        ListNotesView()
    }
}
