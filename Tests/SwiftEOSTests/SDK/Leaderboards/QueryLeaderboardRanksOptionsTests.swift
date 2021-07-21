import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_Leaderboards_QueryLeaderboardRanksOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Leaderboards_QueryLeaderboardRanksOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Leaderboards_QueryLeaderboardRanksOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertNil(cstruct.LeaderboardId)
            XCTAssertNil(cstruct.LocalUserId)
            let swiftObject = try XCTUnwrap(try SwiftEOS_Leaderboards_QueryLeaderboardRanksOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, .zero)
            XCTAssertNil(swiftObject.LeaderboardId)
            XCTAssertNil(swiftObject.LocalUserId) }
    }
}
