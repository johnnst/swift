//===----------------------------------------------------------------------===//
//
// This source file is part of the Swift.org open source project
//
// Copyright (c) 2014 - 2016 Apple Inc. and the Swift project authors
// Licensed under Apache License v2.0 with Runtime Library Exception
//
// See http://swift.org/LICENSE.txt for license information
// See http://swift.org/CONTRIBUTORS.txt for the list of Swift project authors
//
//===----------------------------------------------------------------------===//

@_exported import Intents
import Foundation

#if os(iOS)
@available(iOS 10.0, *)
extension INSetClimateSettingsInCarIntent {
  @nonobjc
  public convenience init(
    enableFan: Bool? = nil,
    enableAirConditioner: Bool? = nil,
    enableClimateControl: Bool? = nil,
    enableAutoMode: Bool? = nil,
    airCirculationMode: INCarAirCirculationMode = .Unknown,
    fanSpeedIndex: Int? = nil,
    fanSpeedPercentage: Int? = nil,
    relativeFanSpeedSetting: INRelativeSetting = .Unknown,
    temperature: NSMeasurement? = nil,
    relativeTemperatureSetting: INRelativeSetting = .Unknown,
    climateZone: INCarSeat = .Unknown) {
    self.init(__enableFan: enableFan.map { NSNumber(bool: $0) },
      enableAirConditioner: enableAirConditioner.map { NSNumber(bool: $0) },
      enableClimateControl: enableClimateControl.map { NSNumber(bool: $0) },
      enableAutoMode: enableAutoMode.map { NSNumber(bool: $0) },
      airCirculationMode: airCirculationMode,
      fanSpeedIndex: fanSpeedIndex.map { NSNumber(long: $0) },
      fanSpeedPercentage: fanSpeedPercentage.map { NSNumber(long: $0) },
      relativeFanSpeedSetting: relativeFanSpeedSetting,
      temperature: temperature,
      relativeTemperatureSetting: relativeTemperatureSetting,
      climateZone: climateZone)
  }

  @nonobjc  
  public final var enableFan: Bool? {
    return __enableFan?.boolValue
  }

  @nonobjc  
  public final var enableAirConditioner: Bool? {
    return __enableAirConditioner?.boolValue
  }

  @nonobjc  
  public final var enableClimateControl: Bool? {
    return __enableClimateControl?.boolValue
  }

  @nonobjc  
  public final var enableAutoMode: Bool? {
    return __enableAutoMode?.boolValue
  }

  @nonobjc  
  public final var fanSpeedIndex: Int? {
    return __fanSpeedIndex?.longValue
  }

  @nonobjc  
  public final var fanSpeedPercentage: Int? {
    return __fanSpeedPercentage?.longValue
  }
}
#endif
