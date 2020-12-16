//
//  Question.swift
//  WhoWantsToBeAMillioner
//
//  Created by Marat Khanbekov on 11.12.2020.
//

import Foundation

enum Answers: Int {
    case A = 1, B = 2, C = 3, D = 4
}

struct Question {
    let question: String
    let answerA: String
    let answerB: String
    let answerC: String
    let answerD: String
    let rightAnswer: Answers
}

struct GameSet {
    var questions = [
        Question(question: "Кто из этих философов в 1864 году написал музыку на стихи А.С. Пушкина «Заклинание» и «Зимний вечер»?", answerA: "A: Юнг", answerB: "B: Гегель", answerC: "C: Ницше", answerD: "D: Шопенгауэр", rightAnswer: .C),
        Question(question: "Сколько раз в сутки подзаводят куранты Спасской башни Кремля?", answerA: "A: Один", answerB: "B: Два", answerC: "C: Три", answerD: "D: Четыре", rightAnswer: .B),
        Question(question: "Кто 1-м получил Нобелевскую премию по литературе?", answerA: "A: Романист", answerB: "B: Драматург", answerC: "C: Поэт", answerD: "D: Эссеист", rightAnswer: .C),
    ]
}
