import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_Leaderboards_CopyLeaderboardUserScoreByIndexOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Leaderboards_CopyLeaderboardUserScoreByIndexOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Leaderboards_CopyLeaderboardUserScoreByIndexOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertEqual(cstruct.LeaderboardUserScoreIndex, .zero)
            XCTAssertNil(cstruct.StatName)
            let swiftObject = try SwiftEOS_Leaderboards_CopyLeaderboardUserScoreByIndexOptions(sdkObject: cstruct) }
    }
}
