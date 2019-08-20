//
//  GuestOrganizer.swift
//  Amusment Park Pass Generator Pt.1
//
//  Created by Joseph Heydorn on 5/22/19.
//  Copyright © 2019 Joseph Heydorn. All rights reserved.
//

import Foundation

enum PassType {
    case classicGuest
    case vipGuest
    case freeChildGuest
    case foodService
    case rideService
    case maintenance
    case manager
}

struct AllPassCheck {
    let amusementArea: Bool
    let kitchenArea: Bool
    let rideControllArea: Bool
    let maintinanceArea: Bool
    let officeArea: Bool
    let skipLine: Bool
    let rideAccess: Bool
    let discountAccessFood: Double?
    let discountAccessMerch: Double?
    let personalInformationRequirted: Bool
}

    let classicGuest = AllPassCheck(amusementArea: true, kitchenArea: false, rideControllArea: false, maintinanceArea: false, officeArea: false, skipLine: false, rideAccess: true, discountAccessFood: nil, discountAccessMerch: nil, personalInformationRequirted: false)

    let vipGuest = AllPassCheck(amusementArea: true, kitchenArea: false, rideControllArea: false, maintinanceArea: false, officeArea: false, skipLine: true, rideAccess: true, discountAccessFood: 0.10, discountAccessMerch: 0.20, personalInformationRequirted: false)

    let freeChildGuest = AllPassCheck(amusementArea: true, kitchenArea: false, rideControllArea: false, maintinanceArea: false, officeArea: false, skipLine: false, rideAccess: true, discountAccessFood: nil, discountAccessMerch: nil, personalInformationRequirted: true)

    let foodEmployee = AllPassCheck(amusementArea: true, kitchenArea: true, rideControllArea: false, maintinanceArea: false, officeArea: false, skipLine: false, rideAccess: true, discountAccessFood: 0.15, discountAccessMerch: 0.25, personalInformationRequirted: true)
    
    let rideEmployee = AllPassCheck(amusementArea: true, kitchenArea: false, rideControllArea: true, maintinanceArea: false, officeArea: false, skipLine: false, rideAccess: true, discountAccessFood: 0.15, discountAccessMerch: 0.25, personalInformationRequirted: true)
    
    let maintinance = AllPassCheck(amusementArea: true, kitchenArea: true, rideControllArea: true, maintinanceArea: true, officeArea: false, skipLine: false, rideAccess: true, discountAccessFood: 0.15, discountAccessMerch: 0.15, personalInformationRequirted: true)
    
    let manager = AllPassCheck(amusementArea: true, kitchenArea: true, rideControllArea: true, maintinanceArea: true, officeArea: true, skipLine: false, rideAccess: true, discountAccessFood: 0.25, discountAccessMerch: 0.25, personalInformationRequirted: true)

