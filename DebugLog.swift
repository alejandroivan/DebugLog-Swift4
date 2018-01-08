//
//  DebugLog.swift
//  davidsystem
//
//  Created by dpsmac1 on 28-12-17.
//  Copyright © 2017 Digitalproserver. All rights reserved.
//

import Foundation

class Log {
    
    static let _kDefaultForceInProduction: Bool = false
    
    
    let appIsInDebugMode: Bool = {
        var isDebug = false
        
        func set(debug: Bool) -> Bool {
            isDebug = debug
            return isDebug
        }
        
        assert(set(debug: true)) // assert() solo se llama en playground y en -Onone (debug) builds.
        return isDebug
    }()
    
    
    @discardableResult init(string: String?, forceInProduction: Bool) {
        guard let str = string else {
            return;
        }
        
        if self.appIsInDebugMode {
            print(str)
        }
        else if forceInProduction {
            print(str)
        }
        
    }
    
    
    // Convenience initializers
    @discardableResult convenience init(string: String?, _ forceInProduction: Bool = _kDefaultForceInProduction) {
        self.init(string: string, forceInProduction: forceInProduction)
    }
    
    @discardableResult convenience init(_ string: String?, _ forceInProduction: Bool = _kDefaultForceInProduction) {
        self.init(string: string, forceInProduction: forceInProduction)
    }
    
    @discardableResult convenience init(_ string: String?, forceInProduction: Bool = _kDefaultForceInProduction) {
        self.init(string: string, forceInProduction: forceInProduction)
    }
}

