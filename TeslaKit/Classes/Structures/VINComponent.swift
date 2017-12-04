//
//  VINComponent.swift
//  TeslaApp
//
//  Created by Jaren Hamblin on 11/26/17.
//  Copyright © 2017 JJJJaren. All rights reserved.
//

import Foundation

///
public struct VINComponent {

    ///
    public enum Manufacturer: String {

        ///
        case tesla = "5YJ"
    }

    ///
    public enum Make: String {

        ///
        case roadster = "R"

        ///
        case modelS = "S"

        ///
        case modelX = "X"

        ///
        case model3 = "3"
    }

    ///
    public enum BatteryType: String {

        ///
        case electric = "E"

        ///
        case highCapacity = "H"

        ///
        case standardCapacity = "S"

        ///
        case ultraCapacity = "V"
    }

    ///
    public enum DriveUnit: String {

        ///
        case singleMotor = "1"

        ///
        case dualMotor = "2"

        ///
        case performanceSingleMotor = "3"

        ///
        case performanceDualMotor = "4"

        ///
        case performance = "P"
    }
}
