import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_Leaderboards_GetLeaderboardRecordCountOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Leaderboards_GetLeaderboardRecordCountOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Leaderboards_GetLeaderboardRecordCountOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            let swiftObject = try SwiftEOS_Leaderboards_GetLeaderboardRecordCountOptions(sdkObject: cstruct) }
    }
}
