//
//  Note.swift
//  NotesApp Watch App
//
//  Created by tulio.rangel on 28/12/22.
//

import Foundation

//Con el Identifiable le estamos diciendo que esta estructura va a tener un ID
struct Note: Codable, Identifiable {
    //El UUID le pone un ID automático
    var id: UUID
    var title: String
    var creationDate: String
    
    //Constructor
    init(title: String) {
        //Se pone el id automático
        self.id = UUID()
        //El título es el que le pasemos
        self.title = title
        
        //Se crea variable para guardar la fecha del sistema
        let date = Date()
        //Se crea un formateador de fecha
        let dateFormatter = DateFormatter()
        //Se formatea la fecha y hora
        dateFormatter.dateStyle = .long
        dateFormatter.timeStyle = .medium
        
        //Se pone la fecha automática ya formateada
        self.creationDate = dateFormatter.string(from: date)
    }
}
