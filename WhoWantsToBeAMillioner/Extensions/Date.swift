//
//  Date.swift
//  WhoWantsToBeAMillioner
//
//  Created by Marat Khanbekov on 16.12.2020.
//

import Foundation

extension Date {
   func getFormattedDate(format: String) -> String {
        let dateformat = DateFormatter()
        dateformat.dateFormat = format
        return dateformat.string(from: self)
    }
}
