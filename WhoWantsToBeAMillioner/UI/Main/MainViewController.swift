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
        rootView.showGameRecordsButton.addTarget(self, action: #selector(showGameRecordsPressed), for: .touchUpInside)
    }

    @objc
    func playGameButtonPressed() {
        let vc = GameViewController()
        vc.modalPresentationStyle = .fullScreen
        present(vc, animated: true, completion: nil)
    }
    
    @objc
    func showGameRecordsPressed() {
        let vc = RecordsViewController()
        present(vc, animated: true, completion: nil)
    }
    
}




