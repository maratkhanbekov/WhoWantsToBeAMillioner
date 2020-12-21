import Foundation


class Game {
    static var shared = Game()
    private let recordsCaretaker = RecordsCatetaker()
    var gameSession: GameSession?
    
    private(set) var records: [Record] {
        didSet {
            recordsCaretaker.save(records: self.records)
        }
    }
    
    private init() {
        self.records = recordsCaretaker.retrieveRecords()
    }
    
    func saveGameResult() {
        guard let rounds = gameSession?.gameRounds, let rightAnswers = gameSession?.rightAnswers else { return }
        let record = Record(date: Date(), rounds: rounds, rightAnswers: rightAnswers)
        self.records.append(record)
        print(records)
    }
}
