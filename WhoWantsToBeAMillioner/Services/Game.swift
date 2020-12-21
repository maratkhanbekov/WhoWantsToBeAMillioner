import Foundation

enum SequenceModes {
    case Consistently, RandomOrder
}


class Game {
    static var shared = Game()
    private let recordsCaretaker = RecordsCaretaker()
    private let questionsCareTaker = QuestionsCareTaker()
    var gameSession: GameSessionFacade?
    var questionSequenceMode: SequenceModes = .Consistently
    
    private(set) var records: [Record] {
        didSet {
            recordsCaretaker.save(records: self.records)
        }
    }
    
    private(set) var questions: [Question] {
        didSet {
            questionsCareTaker.save(questions: self.questions)
        }
    }
    
    private init() {
        self.questions = questionsCareTaker.retrieveQuestions()
        self.records = recordsCaretaker.retrieveRecords()
    }
    
    func saveQuestion(_ question: Question) {
        self.questions.append(question)
    }
    
    func saveGameResult() {
        guard let rounds = gameSession?.gameRounds.value, let rightAnswers = gameSession?.rightAnswers else { return }
        let record = Record(date: Date(), rounds: rounds, rightAnswers: rightAnswers)
        self.records.append(record)
        print(records)
    }
}
