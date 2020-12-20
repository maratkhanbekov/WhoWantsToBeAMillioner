//
//  GetNewQuestionRandomStrategy.swift
//  WhoWantsToBeAMillioner
//
//  Created by Marat Khanbekov on 20.12.2020.
//

import Foundation

class GetNewQuestionRandomStrategy: GetNewQuestionStrategy {
    var questions: [Question]?
    
    func getNewQuestion() -> Question? {
        guard let questionsUnpacked = questions else { return nil }
        
        guard questionsUnpacked.count > 0 else { return nil }

        let NextQuestionIndex = Int.random(in: 0...questionsUnpacked.count-1)
        
        let nextQuestion = questions?[NextQuestionIndex]
        questions?.remove(at: NextQuestionIndex)
        
        
        return nextQuestion
    }
}
