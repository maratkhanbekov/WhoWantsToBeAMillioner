//
//  GameSession.swift
//  WhoWantsToBeAMillioner
//
//  Created by Marat Khanbekov on 16.12.2020.
//

import Foundation

class GameSessionFacade {
//    var gameRounds = 1
    var gameRounds = Observable<Int>(1)
    var rightAnswers = 0
    var wrongAnswers = 0

    var questions: [Question]? {
        didSet {
            getNewQuestionStrategy.questions = questions
        }
    }
    var questionSequenceMode: SequenceModes?
    var nextQuestion: Question?
    
    private lazy var getNewQuestionStrategy: GetNewQuestionStrategy = {
        switch self.questionSequenceMode {
        case .Consistently:
            return GetNewQuestionConsistentStrategy()
        case .RandomOrder:
            return GetNewQuestionRandomStrategy()
        case .none:
            return GetNewQuestionConsistentStrategy()
        }
    }()
    
    func precisionOfAnswers() -> Float {
        if gameRounds.value - 1 == 0 {
            return 0
        }
        return Float(rightAnswers)/Float(gameRounds.value-1)
    }
    
    func addRightAnswer() {
        
        rightAnswers += 1
    }
    
    func addWrongAnswer() {
        
        wrongAnswers += 1
    }
    
    func getNewQuestion() {
        nextQuestion = getNewQuestionStrategy.getNewQuestion()
        
        questions = getNewQuestionStrategy.questions
    }
    
    func check(answer: Answers, for question: Question) -> Bool {
        if answer == question.rightAnswer {
            return true
        }
        else {
            return false
        }
    }
    
}

protocol GetNewQuestionStrategy {
    var questions: [Question]? { get set }
    func getNewQuestion() -> Question?
}
