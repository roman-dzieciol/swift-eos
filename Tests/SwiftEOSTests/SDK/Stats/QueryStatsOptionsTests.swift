import XCTest
import EOSSDK
@testable import SwiftEOS

public final class SwiftEOS_Stats_QueryStatsOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Stats_QueryStatsOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Stats_QueryStatsOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertNil(cstruct.LocalUserId)
            XCTAssertEqual(cstruct.StartTime, .zero)
            XCTAssertEqual(cstruct.EndTime, .zero)
            XCTAssertNil(cstruct.StatNames)
            XCTAssertEqual(cstruct.StatNamesCount, .zero)
            XCTAssertNil(cstruct.TargetUserId)
            let swiftObject = try XCTUnwrap(try SwiftEOS_Stats_QueryStatsOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, .zero)
            XCTAssertNil(swiftObject.LocalUserId)
            XCTAssertEqual(swiftObject.StartTime, .zero)
            XCTAssertEqual(swiftObject.EndTime, .zero)
            XCTAssertNil(swiftObject.StatNames)
            XCTAssertNil(swiftObject.TargetUserId) }
    }
}
