//
//  SwipeCheck.swift
//  Amusment Park Pass Generator Pt.1
//
//  Created by Joseph Heydorn on 5/22/19.
//  Copyright © 2019 Joseph Heydorn. All rights reserved.
//

import Foundation
//A check if the guest has all the proper information needed to enter the park
func swipeEnterPark() {
    if pass.rideAccess == true {
        print("Enjoy the park!")
    } else {
        print("Please purchase any one of the passes in order to gain ride access.")
    }
}

//Entrance To Specific Area Check
func swipeAmusement() {
    if pass.amusementArea == true {
        print("Enjoy the Ride!")
    } else {
        print("Sorry, you need to have ride access to ride the attraction.")
    }
}

func swipeKitchen() {
    if pass.kitchenArea == true {
        print("Have a good day at work!")
    } else {
        print("Sorry, this area is for kitchen staff only.")
    }
}

func swipeRideControl() {
    if pass.rideControllArea == true {
        print("Have a good day at work!")
    } else {
        print("Sorry, this area is for ride control staff only.")
    }
}

func swipeMaintenance() {
    if pass.maintinanceArea == true {
        print("Have a good day at work!")
    } else {
        print("Sorry, this area is for ride maitinance staff only.")
    }
}

func swipeOffice() {
    if pass.officeArea == true {
        print("Have a good day at work!")
    } else {
        print("Sorry, this area is for office staff only.")
    }
}

//Remove this function in the final process, this tests ever swipe function
func checkSwipe() {
    swipeAmusement()
    swipeKitchen()
    swipeRideControl()
    swipeMaintenance()
    swipeOffice()
    swipeEnterPark()
}
