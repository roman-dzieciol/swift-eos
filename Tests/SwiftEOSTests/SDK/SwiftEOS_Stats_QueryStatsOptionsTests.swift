import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_Stats_QueryStatsOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Stats_QueryStatsOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Stats_QueryStatsOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertNil(cstruct.LocalUserId)
            XCTAssertEqual(cstruct.StartTime, .zero)
            XCTAssertEqual(cstruct.EndTime, .zero)
            XCTAssertNil(cstruct.StatNames)
            XCTAssertEqual(cstruct.StatNamesCount, .zero)
            XCTAssertNil(cstruct.TargetUserId)
            let swiftObject = try SwiftEOS_Stats_QueryStatsOptions(sdkObject: cstruct) }
    }
}
