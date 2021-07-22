import XCTest
import EOSSDK
@testable import SwiftEOS

public final class SwiftEOS_Leaderboards_GetLeaderboardRecordCountOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Leaderboards_GetLeaderboardRecordCountOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Leaderboards_GetLeaderboardRecordCountOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            let swiftObject = try XCTUnwrap(try SwiftEOS_Leaderboards_GetLeaderboardRecordCountOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, .zero) }
    }
}
