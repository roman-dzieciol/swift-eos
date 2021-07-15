import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_Stats_IngestStatOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Stats_IngestStatOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Stats_IngestStatOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertNil(cstruct.LocalUserId)
            XCTAssertNil(cstruct.Stats)
            XCTAssertEqual(cstruct.StatsCount, .zero)
            XCTAssertNil(cstruct.TargetUserId)
            let swiftObject = try SwiftEOS_Stats_IngestStatOptions(sdkObject: cstruct) }
    }
}
