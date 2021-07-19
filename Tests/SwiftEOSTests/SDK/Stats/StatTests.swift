import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_Stats_StatTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Stats_Stat() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Stats_Stat.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, EOS_STATS_STAT_API_LATEST)
            XCTAssertNil(cstruct.Name)
            XCTAssertEqual(cstruct.StartTime, .zero)
            XCTAssertEqual(cstruct.EndTime, .zero)
            XCTAssertEqual(cstruct.Value, .zero)
            let swiftObject = try XCTUnwrap(try SwiftEOS_Stats_Stat(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, EOS_STATS_STAT_API_LATEST)
            XCTAssertNil(swiftObject.Name)
            XCTAssertEqual(swiftObject.StartTime, .zero)
            XCTAssertEqual(swiftObject.EndTime, .zero)
            XCTAssertEqual(swiftObject.Value, .zero) }
    }
}
