//
//  GetNewQuestionConsistentStrategy.swift
//  WhoWantsToBeAMillioner
//
//  Created by Marat Khanbekov on 20.12.2020.
//

import Foundation

//
//  GetNewQuestionRandomStrategy.swift
//  WhoWantsToBeAMillioner
//
//  Created by Marat Khanbekov on 20.12.2020.
//

import Foundation

class GetNewQuestionConsistentStrategy: GetNewQuestionStrategy {
    var questions: [Question]?
    
    func getNewQuestion() -> Question? {
        guard let questionsUnpacked = questions else { return nil }
        guard questionsUnpacked.count > 0 else { return nil }
        let NextQuestionIndex = 0
        let nextQuestion = questionsUnpacked[NextQuestionIndex]
        questions?.remove(at: NextQuestionIndex)
        
        
        return nextQuestion
    }
}
