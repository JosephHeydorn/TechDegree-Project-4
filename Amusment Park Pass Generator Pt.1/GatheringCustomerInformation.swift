//
//  GatheringCustomerInformation.swift
//  Amusment Park Pass Generator Pt.1
//
//  Created by Joseph Heydorn on 5/27/19.
//  Copyright © 2019 Joseph Heydorn. All rights reserved.
//

import Foundation
protocol EmployeeFormat {
    var isWorker: Bool? { get }
    var firstName: String { get }
    var lastName: String { get }
    var streetAddress: String { get }
    var city: String { get }
    var state: String { get }
    var zipCode: Int? { get }
}

class EmployeeInformation: EmployeeFormat {
    var isWorker: Bool?
    var firstName: String
    var lastName: String
    var streetAddress: String
    var city: String
    var state: String
    var zipCode: Int?
    
    init(isWorker: Bool?, firstName: String, lastName: String, streetAddress: String, city: String, state: String, zipCode: Int?) {
        self.isWorker = isWorker
        self.firstName = firstName
        self.lastName = lastName
        self.streetAddress = streetAddress
        self.city = city
        self.state = state
        self.zipCode = zipCode
    }
}

protocol Child {
    var dateOfBirth: String { get }
}

struct ChildGuestAge: Child {
    let dateOfBirth: String
}



func verifyInformation() throws {
    if ChildGuestDateOfBirth.dateOfBirth == "" {
        throw MissingInfoError.missingBirthday
    } else if employeeInformationGather.firstName == "" {
        throw MissingInfoError.missingFirstName
    } else if employeeInformationGather.lastName == "" {
        throw MissingInfoError.missingLastName
    } else if employeeInformationGather.streetAddress == "" || employeeInformationGather.city == "" || employeeInformationGather.state == "" || employeeInformationGather.zipCode == nil {
        throw MissingInfoError.missingAddressInfo
    } else if employeeInformationGather.isWorker == nil {
        throw MissingInfoError.missingWorkerSpecification
    } else {
        print("Thank you for registering!")
    }
}



