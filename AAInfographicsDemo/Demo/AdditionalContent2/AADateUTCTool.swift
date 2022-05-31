//
//  AADateUTCTool.swift
//  AAInfographicsDemo
//
//  Created by Admin on 2021/7/19.
//  Copyright © 2021 An An. All rights reserved.
//

import Foundation
import JavaScriptCore

@available(iOS 10.0, macCatalyst 13.1, *)
public func AADateUTC(_ year: Int, _ month: Int, _ day: Int) -> Double {
    let context = JSContext()
    let jsStr = "function getDateUTC(year,month,day) {var timeInterval = Date.UTC(year,month,day);  return timeInterval}"
    context?.evaluateScript(jsStr)
    let jsValue = context?.objectForKeyedSubscript("getDateUTC")
    let timeIntervalValue = jsValue?.call(withArguments: [year, month, day])
    let timeInterval = timeIntervalValue?.toDouble()
    return timeInterval!
}
