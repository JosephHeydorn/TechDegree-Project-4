//
//  ErrorOrganizer.swift
//  Amusment Park Pass Generator Pt.1
//
//  Created by Joseph Heydorn on 5/27/19.
//  Copyright © 2019 Joseph Heydorn. All rights reserved.
//

import Foundation

enum MissingInfoError: Error {
    case missingBirthday
    case missingLastName
    case missingFirstName
    case missingAddressInfo
    case missingWorkerSpecification
}

enum majorErrorOccurance: Error {
    case error1 // This error is if the pass some how missess a bool check in an if statement
}
