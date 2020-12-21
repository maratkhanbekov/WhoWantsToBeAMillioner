//
//  MainViewController.swift
//  WhoWantsToBeAMillioner
//
//  Created by Marat Khanbekov on 11.12.2020.
//

import UIKit


class MainViewController: UIViewController {
    let rootView = MainView()
    override func loadView() {
        view = rootView
    }
    
    override func viewDidLoad() {
        rootView.playGameButton.addTarget(self, action: #selector(playGameButtonPressed), for: .touchUpInside)
        rootView.showGameRecordsButton.addTarget(self, action: #selector(showGameRecordsButtonPressed), for: .touchUpInside)
        rootView.setupGameButton.addTarget(self, action: #selector(setupGameButtonPressed), for: .touchUpInside)
        
        rootView.addQuestionButton.addTarget(self, action: #selector(addQuestionButtonPressed), for: .touchUpInside)
    }

    @objc
    func playGameButtonPressed() {
        let vc = GameViewController()
        present(vc, animated: true, completion: nil)
    }
    
    @objc
    func showGameRecordsButtonPressed() {
        let vc = RecordsViewController()
        present(vc, animated: true, completion: nil)
    }
    
    @objc
    func setupGameButtonPressed() {
        let vc = SetupViewController()
        present(vc, animated: true, completion: nil)
    }
    
    @objc
    func addQuestionButtonPressed() {
        let vc = AddQuestionViewController()
        present(vc, animated: true, completion: nil)
    }
    
}




