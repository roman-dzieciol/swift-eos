import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_Leaderboards_CopyLeaderboardUserScoreByIndexOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Leaderboards_CopyLeaderboardUserScoreByIndexOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Leaderboards_CopyLeaderboardUserScoreByIndexOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, EOS_LEADERBOARDS_COPYLEADERBOARDUSERSCOREBYINDEX_API_LATEST)
            XCTAssertEqual(cstruct.LeaderboardUserScoreIndex, .zero)
            XCTAssertNil(cstruct.StatName)
            let swiftObject = try XCTUnwrap(try SwiftEOS_Leaderboards_CopyLeaderboardUserScoreByIndexOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, EOS_LEADERBOARDS_COPYLEADERBOARDUSERSCOREBYINDEX_API_LATEST)
            XCTAssertEqual(swiftObject.LeaderboardUserScoreIndex, .zero)
            XCTAssertNil(swiftObject.StatName) }
    }
}
