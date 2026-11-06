//
//  AnalyticsManager.swift
//  AltStore
//
//  Created by Riley Testut on 3/31/20.
//  Copyright © 2020 Riley Testut. All rights reserved.
//

import Foundation
import AltStoreCore

extension AnalyticsManager
{
    enum EventProperty: String
    {
        case name
        case bundleIdentifier
        case developerName
        case version
        case buildVersion
        case size
        case tintColor
        case sourceIdentifier
        case sourceURL
        case patreonURL
        case pledgeAmount
        case pledgeCurrency
    }
    
    enum Event
    {
        case installedApp(InstalledApp)
        case updatedApp(InstalledApp)
        case refreshedApp(InstalledApp)
        
        var name: String {
            switch self
            {
            case .installedApp: return "installed_app"
            case .updatedApp: return "updated_app"
            case .refreshedApp: return "refreshed_app"
            }
        }
        
        var properties: [EventProperty: String] {
            return [:]
        }
    }
}

class AnalyticsManager
{
    static let shared = AnalyticsManager()
    
    private init()
    {
    }
}

extension AnalyticsManager
{
    func start()
    {
        // Analytics disabled: Zero telemetry or analytics data is collected or sent.
    }
    
    func trackEvent(_ event: Event)
    {
        // Analytics disabled: Zero telemetry or analytics data is collected or sent.
    }
}
