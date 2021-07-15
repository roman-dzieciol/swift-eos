import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_Leaderboards_QueryLeaderboardRanksOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Leaderboards_QueryLeaderboardRanksOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Leaderboards_QueryLeaderboardRanksOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertNil(cstruct.LeaderboardId)
            XCTAssertNil(cstruct.LocalUserId)
            let swiftObject = try SwiftEOS_Leaderboards_QueryLeaderboardRanksOptions(sdkObject: cstruct) }
    }
}
