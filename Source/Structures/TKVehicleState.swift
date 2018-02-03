//
//  TKVehicleState.swift
//  TeslaApp
//
//  Created by Jaren Hamblin on 11/25/17.
//  Copyright © 2017 JJJJaren. All rights reserved.
//

import Foundation
import ObjectMapper

///
public struct TKVehicleState {

    public var exteriorColor: String?

    // TODO: Complete other properties

    public var center_display_state: Int = 0
    public var autopark_style: String? = nil

    /// Returns whether remote start is active (Driver can begin keyless driving by entering the car, pressing the brake, and selecting Drive)
    public var remoteStart: Bool = false

    public var odometer: Double = 0
    public var rearTrunkState: Int = 0
    public var sun_roof_percent_open: Int = 0
    public var vehicle_name: String? = nil

    ///
    public var remoteStartSupported: Bool = false
    
    public var dark_rims: Bool = false
    public var locked: Bool = false
    public var rear_seat_type: Int = 0
    public var rhd: Bool = false
    public var autopark_state_v2: String? = nil
    public var roof_color: String? = nil
    public var rear_seat_heaters: Int = 0

    /// Returns whether valet mode is current enabled
    public var valetMode: Bool = false

    public var parsed_calendar_supported: Bool = false
    public var api_version: Int = 0
    public var homelink_nearby: Bool = false
    public var autopark_state: String? = nil
    public var last_autopark_error: String? = nil
    public var driverRearDoorState: Int = 0
    public var has_spoiler: Bool = false
    public var calendar_supported: Bool = false
    public var sun_roof_state: String? = nil
    public var driverFrontDoorState: Int = 0

    /// Returns whether valet mode requires PIN
    public var valetPinNeeded: Bool = false

    public var passengerRearDoorState: Int = 0
    public var spoiler_type: String? = nil
    public var car_type: String? = nil
    public var perf_config: String? = nil
    public var car_version: String? = nil
    public var seat_type: Int = 0
    public var third_row_seats: String? = nil
    public var frontTrunkState: Int = 0
    public var notifications_supported: Bool = false
    public var passengerFrontDoorState: Int = 0
    public var wheel_type: String? = nil
    public var sun_roof_installed: Int = 0
    public var timestamp: Int = 0

    ///
    public init() {}
}

extension TKVehicleState: TKDataResponse {

    public mutating func mapping(map: Map) {
        locked <- map["locked"]
        exteriorColor <- map["exterior_color"]
        odometer <- map["odometer"]
        driverFrontDoorState <- map["df"]
        driverRearDoorState <- map["dr"]
        passengerFrontDoorState <- map["pf"]
        passengerRearDoorState <- map["pr"]
        frontTrunkState <- map["ft"]
        rearTrunkState <- map["rt"]
        remoteStartSupported <- map["remote_start_supported"]
        remoteStart <- map["remote_start"]
        valetMode <- map["valet_mode"]
        valetPinNeeded <- map["valet_pin_needed"]
    }
}

//{
//    "exterior_color" : "Black",
//    "center_display_state" : 0,
//    "autopark_style" : "dead_man",
//    "remote_start" : false,
//    "odometer" : 1300.683614,
//    "rt" : 0,
//    "sun_roof_percent_open" : 0,
//    "vehicle_name" : "Darth",
//    "remote_start_supported" : true,
//    "dark_rims" : false,
//    "locked" : true,
//    "rear_seat_type" : 0,
//    "rhd" : false,
//    "autopark_state_v2" : "disabled",
//    "roof_color" : "Glass",
//    "rear_seat_heaters" : 0,
//    "valet_mode" : false,
//    "parsed_calendar_supported" : true,
//    "api_version" : 3,
//    "homelink_nearby" : false,
//    "autopark_state" : "unavailable",
//    "last_autopark_error" : "no_error",
//    "dr" : 0,
//    "has_spoiler" : false,
//    "calendar_supported" : true,
//    "sun_roof_state" : "unknown",
//    "df" : 0,
//    "valet_pin_needed" : true,
//    "pr" : 0,
//    "spoiler_type" : "None",
//    "car_type" : "models2",
//    "perf_config" : "P2",
//    "car_version" : "2017.44 02fdc86",
//    "seat_type" : 2,
//    "third_row_seats" : "None",
//    "ft" : 0,
//    "notifications_supported" : true,
//    "pf" : 0,
//    "wheel_type" : "AeroTurbine19",
//    "sun_roof_installed" : 0,
//    "timestamp" : 1513809833025
//}

