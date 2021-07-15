import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_Leaderboards_QueryLeaderboardDefinitionsOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Leaderboards_QueryLeaderboardDefinitionsOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Leaderboards_QueryLeaderboardDefinitionsOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertEqual(cstruct.StartTime, .zero)
            XCTAssertEqual(cstruct.EndTime, .zero)
            XCTAssertNil(cstruct.LocalUserId)
            let swiftObject = try SwiftEOS_Leaderboards_QueryLeaderboardDefinitionsOptions(sdkObject: cstruct) }
    }
}
