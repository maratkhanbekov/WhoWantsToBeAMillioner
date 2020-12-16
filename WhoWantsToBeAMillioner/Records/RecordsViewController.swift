//
//  RecordsViewController.swift
//  WhoWantsToBeAMillioner
//
//  Created by Marat Khanbekov on 13.12.2020.
//

import UIKit

class RecordsViewController: UIViewController {
    let rootView = RecordsView()
    var records: [Record]?
    
    override func loadView() {
        view = rootView
    }
    
    override func viewDidLoad() {
        rootView.tableView.delegate = self
        rootView.tableView.dataSource = self
        rootView.tableView.register(UITableViewCell.self, forCellReuseIdentifier: "Cell")
        records = Game.shared.records
    }
}

extension RecordsViewController: UITableViewDelegate {
    
}

extension RecordsViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        records?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        guard let record = records?[indexPath.row] else { return cell }
        cell.textLabel!.text = String("\(record.date.getFormattedDate(format: "yyyy-MM-dd")) / \(record.shareOfCorrentAnswers)")
        cell.textLabel?.textColor = .white
        cell.backgroundColor = .black
        return cell
    }
}


