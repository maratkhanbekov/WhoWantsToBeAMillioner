//
//  QuestionsCaretaker.swift
//  WhoWantsToBeAMillioner
//
//  Created by Marat Khanbekov on 19.12.2020.
//

import Foundation


final class QuestionsCareTaker {
    let encoder = JSONEncoder()
    let decoder = JSONDecoder()
    
    private let key = "questions"
    
    init() {
        let storedQuestions = self.retrieveQuestions()
        if storedQuestions.count > 0 { return }
        else {
        let questions = [
            Question(question: "Кто из этих философов в 1864 году написал музыку на стихи А.С. Пушкина «Заклинание» и «Зимний вечер»?", answerA: "A: Юнг", answerB: "B: Гегель", answerC: "C: Ницше", answerD: "D: Шопенгауэр", rightAnswer: .C),
            Question(question: "Сколько раз в сутки подзаводят куранты Спасской башни Кремля?", answerA: "A: Один", answerB: "B: Два", answerC: "C: Три", answerD: "D: Четыре", rightAnswer: .B),
            Question(question: "Кто 1-м получил Нобелевскую премию по литературе?", answerA: "A: Романист", answerB: "B: Драматург", answerC: "C: Поэт", answerD: "D: Эссеист", rightAnswer: .C),
        ]
        self.save(questions: [])
        self.save(questions: questions)
        }
    }
    
    func save(questions: [Question]) {
        do {
            let data = try self.encoder.encode(questions)
            UserDefaults.standard.set(data, forKey: key)
        }
        catch {
            print(error)
        }
    }
    
    func retrieveQuestions() -> [Question] {
        
        
        
        guard let data = UserDefaults.standard.data(forKey: key) else {
            return []
        }
        
        do {
            return try self.decoder.decode([Question].self, from: data)
        } catch {
            print(error)
            return []
        }
    }
}
