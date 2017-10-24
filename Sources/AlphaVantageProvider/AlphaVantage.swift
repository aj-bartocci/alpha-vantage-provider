//
//  AlphaVantage.swift
//  AlphaVantagePackageDescription
//
//  Created by AJ Bartocci on 10/22/17.
//

import Foundation
import AlphaVantage 

public class AlphaVantage {
    fileprivate static let apiErrorMessage = "API key has not been set. You must call AlphaVantage.setup(with apiKey) before attempting to make any calls. Typically set during app launch"
    fileprivate static var apiKey: String?
    static func setup(with apiKey: String) {
        self.apiKey = apiKey
    }
    
    public static let TimeSeries = AlphaVantageTimeSeries()
}

public class AlphaVantageTimeSeries {
    //    private var apiKey: String?
    //    public init(apiKey: String) {
    //        self.apiKey = apiKey
    //    }
    /// Provides calls to get JSON or IntraDayModel responses
    public lazy var IntraDay: AVFIntraDayWorker = {
        guard let key = AlphaVantage.apiKey else {
            fatalError(AlphaVantage.apiErrorMessage)
        }
        return AVFIntraDayWorker(apiKey: key)
    }()
    /// Provides calls to get JSON or DailyModel responses
    public lazy var Daily: AVFNonIntervalWorker<AVFDailyConfig> = {
        guard let key = AlphaVantage.apiKey else {
            fatalError(AlphaVantage.apiErrorMessage)
        }
        return AVFNonIntervalWorker<AVFDailyConfig>(apiKey: key)
    }()
    /// Provides calls to get JSON or DailyAdjustedModel responses
    public lazy var DailyAdjusted: AVFNonIntervalWorker<AVFDailyAdjustedConfig> = {
        guard let key = AlphaVantage.apiKey else {
            fatalError(AlphaVantage.apiErrorMessage)
        }
        return AVFNonIntervalWorker<AVFDailyAdjustedConfig>(apiKey: key)
    }()
    /// Provides calls to get JSON or WeeklyModel responses
    public lazy var Weekly: AVFNonIntervalWorker<AVFWeeklyConfig> = {
        guard let key = AlphaVantage.apiKey else {
            fatalError(AlphaVantage.apiErrorMessage)
        }
        return AVFNonIntervalWorker<AVFWeeklyConfig>(apiKey: key)
    }()
    /// Provides calls to get JSON or WeeklyAdjustedModel responses
    public lazy var WeeklyAdjusted: AVFNonIntervalWorker<AVFWeeklyAdjustedConfig> = {
        guard let key = AlphaVantage.apiKey else {
            fatalError(AlphaVantage.apiErrorMessage)
        }
        return AVFNonIntervalWorker<AVFWeeklyAdjustedConfig>(apiKey: key)
    }()
    /// Provides calls to get JSON or MonthlyModel responses
    public lazy var Monthly: AVFNonIntervalWorker<AVFMonthlyConfig> = {
        guard let key = AlphaVantage.apiKey else {
            fatalError(AlphaVantage.apiErrorMessage)
        }
        return AVFNonIntervalWorker<AVFMonthlyConfig>(apiKey: key)
    }()
    /// Provides calls to get JSON or MonthlyAdjustedModel responses
    public lazy var MonthlyAdjusted: AVFNonIntervalWorker<AVFMonthlyAdjustedConfig> = {
        guard let key = AlphaVantage.apiKey else {
            fatalError(AlphaVantage.apiErrorMessage)
        }
        return AVFNonIntervalWorker<AVFMonthlyAdjustedConfig>(apiKey: key)
    }()
}
