//
//  ContentView.swift
//  NotesApp Watch App
//
//  Created by tulio.rangel on 28/12/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                NavigationLink("Agregar Nota", destination: AddNoteView())
                NavigationLink("Listar Notas", destination: ListNotesView())
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
