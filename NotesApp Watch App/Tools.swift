//
//  Tools.swift
//  NotesApp Watch App
//
//  Created by tulio.rangel on 30/12/22.
//

import Foundation

class Tools {
    let key: String = "NotesApp"
    static let shared = Tools()
    
    private init() {}
    
    //Como Note ya lo defini como Codable, lo puedo definir como JSON acá
    func save(array: [Note]) {
        let data = array.map{try? JSONEncoder().encode($0)}
        UserDefaults.standard.set(data, forKey: key)
    }
    
    func load() -> [Note] {
        guard let savedData = UserDefaults.standard.array(forKey: key) as? [Data] else {
            return []
        }
        return savedData.map{try! JSONDecoder().decode(Note.self, from: $0)}
    }
}
