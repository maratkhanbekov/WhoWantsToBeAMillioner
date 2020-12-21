//
//  Record.swift
//  WhoWantsToBeAMillioner
//
//  Created by Marat Khanbekov on 13.12.2020.
//

import Foundation

final class RecordsCatetaker {
    private let encoder = JSONEncoder()
    private let decoder =  JSONDecoder()
    
    private let key = "records"
    
    func save(records: [Record]) {
        do {
            let data = try self.encoder.encode(records)
            UserDefaults.standard.set(data, forKey: key)
        }
        catch {
            print(error)
        }
    }
    
    func retrieveRecords() -> [Record] {
        guard let data = UserDefaults.standard.data(forKey: key) else {
            return []
        }
        
        do {
            return try self.decoder.decode([Record].self, from: data)
        } catch {
            print(error)
            return []
        }
    }
}
