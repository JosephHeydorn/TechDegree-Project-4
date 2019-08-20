//
//  ViewController.swift
//  Amusment Park Pass Generator Pt.1
//
//  Created by Joseph Heydorn on 5/21/19.
//  Copyright © 2019 Joseph Heydorn. All rights reserved.
//

import UIKit

//Below Are all the test cases

//Test Case#1
let ChildGuestDateOfBirth = ChildGuestAge(dateOfBirth:"02/09/1999")
let pass = foodEmployee
let employeeInformationGather = EmployeeInformation(isWorker: true, firstName: "Joey", lastName: "Heydorn", streetAddress: "123 Address Rd.", city: "Some City", state: "Some State", zipCode: 12345)

//Test Case #2
//let ChildGuestDateOfBirth = ChildGuestAge(dateOfBirth: "")
//let pass = rideEmployee
//let employeeInformationGather = EmployeeInformation(isWorker: true, firstName: "Joey", lastName: "Heydorn", streetAddress: "123 Address", city: "Some City", state: "Some State", zipCode: 12345)

//Test Case #3
//let ChildGuestDateOfBirth = ChildGuestAge(dateOfBirth: "02/09/1999")
//let pass = rideEmployee
//let employeeInformationGather = EmployeeInformation(isWorker: true, firstName: "", lastName: "Heydorn", streetAddress: "123 Address", city: "Some City", state: "Some State", zipCode: 12345)

//Test Case #4
//let ChildGuestDateOfBirth = ChildGuestAge(dateOfBirth: "02/09/1999")
//let pass = classicGuest
//let employeeInformationGather = EmployeeInformation(isWorker: false, firstName: "", lastName: "", streetAddress: "", city: "", state: "", zipCode: nil )

class ViewController: UIViewController {
    
    func checkGeneralOrVip() {
        if employeeInformationGather.isWorker == true {
            verifyInfo()
        }
    }

    func verifyInfo() {
        do {
            try verifyInformation()
        } catch MissingInfoError.missingBirthday {
            print("Please Enter you Childs Birthday Info.")
        } catch MissingInfoError.missingFirstName {
            print("Please Enter your First Name.")
        } catch MissingInfoError.missingLastName {
            print("Please Enter your Last Name")
        } catch MissingInfoError.missingAddressInfo {
            print("Please Enter your Complete Address")
        } catch MissingInfoError.missingWorkerSpecification {
            print("Please Specify if you are an Employee")
        } catch{
            print("\(error)")
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        checkGeneralOrVip()
        checkSwipe()
        
        
        
    }
}
