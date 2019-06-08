//
//  TestDataModel.swift
//  swiftuitest
//
//  Created by Marquis Kurt on 6/6/19.
//  Copyright © 2019 Hyperspace Developers. All rights reserved.
//

import Foundation
import SwiftUI

enum TestElement {
    case cube
    case button
    case energyPellet
    case thermalDiscouragementBeam
    case acid
    case turret
    case faithPlate
    case lightBridge
    case tractorBeam
    case gel
    case fireball
}

struct Testchamber: Identifiable {
    var id = UUID()
    var number: Int
    var elements: [TestElement]?
    var announcement: String
    var managedBy: String
    
    var imageName: String { return String(number) + managedBy + "Thumb" }
    
    var elementsAsString: String {
        if elements != nil {
            return (elements?.map { return getElementName(elem: $0) }.reduce("", { (first, second) -> String in
                if first == "" {
                    return second
                } else {
                    return first + ", " + second
                }
            }))!
        } else {
            return "No elements contained."
        }
    }
    
    func getElementName(elem: TestElement) -> String {
        switch elem {
        case .cube:
            return "Weighted Storage Cube"
        case .button:
            return "Weighted Button"
        case .acid:
            return "Deadly Goo"
        case .energyPellet:
            return "High-Energy Pellet"
        case .faithPlate:
            return "Aerial Faith Plate"
        case .fireball:
            return "Fireball Receptacle"
        case .gel:
            return "Mobility Gels"
        case .lightBridge:
            return "Hard Light Bridge"
        case .thermalDiscouragementBeam:
            return "Thermal Discouragement Beam"
        case .tractorBeam:
            return "Tractor Beam"
        case .turret:
            return "Sentry Turret"
        }
    }
}

#if DEBUG
let sampleTests = [
    Testchamber(number: 0, elements: [.cube, .button], announcement: "Please place the weighted storage cube on the 15100-megawatt Aperture Science Heavy-Duty Super-Colliding Cuper Button.", managedBy: "GLaDOS"),
    Testchamber(number: 3, announcement: "Please proceed to the chamberlock. Mind the gap.", managedBy: "GLaDOS"),
    Testchamber(number: 7, elements: [.energyPellet], announcement: "Warning devices are required on all mobile equipment; however, alarms and flashing hazard lights have been found to agitate the High Energy Pellet and have been therefore disabled for your safety.", managedBy: "GLaDOS"),
    Testchamber(number: 17, elements: [.tractorBeam, .lightBridge, .gel], announcement: "Please note that light bridges generally do not affect propulsion or repulsion gel and its properties and can therefore be used as surfaces.", managedBy: "Asriel")
]
#endif
