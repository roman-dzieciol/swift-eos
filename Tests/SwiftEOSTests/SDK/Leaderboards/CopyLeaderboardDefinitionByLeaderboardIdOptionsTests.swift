import XCTest
import EOSSDK
@testable import SwiftEOS

public final class SwiftEOS_Leaderboards_CopyLeaderboardDefinitionByLeaderboardIdOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Leaderboards_CopyLeaderboardDefinitionByLeaderboardIdOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Leaderboards_CopyLeaderboardDefinitionByLeaderboardIdOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertNil(cstruct.LeaderboardId)
            let swiftObject = try XCTUnwrap(try SwiftEOS_Leaderboards_CopyLeaderboardDefinitionByLeaderboardIdOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, .zero)
            XCTAssertNil(swiftObject.LeaderboardId) }
    }
}
