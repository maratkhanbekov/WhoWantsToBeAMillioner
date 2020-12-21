//
//  Question.swift
//  WhoWantsToBeAMillioner
//
//  Created by Marat Khanbekov on 11.12.2020.
//

import Foundation

enum Answers: Int, Codable {
    case A = 1, B = 2, C = 3, D = 4
}

struct Question: Codable {
    let question: String
    let answerA: String
    let answerB: String
    let answerC: String
    let answerD: String
    let rightAnswer: Answers
}
