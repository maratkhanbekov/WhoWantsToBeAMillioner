//
//  Record.swift
//  WhoWantsToBeAMillioner
//
//  Created by Marat Khanbekov on 16.12.2020.
//

import Foundation

struct Record: Codable {
    let date: Date
    let rounds: Int
    let rightAnswers: Int
    
    var shareOfCorrentAnswers: Float {
        return Float(rightAnswers/rounds)
    }
}
