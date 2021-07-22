import XCTest
import EOSSDK
@testable import SwiftEOS

public final class SwiftEOS_Leaderboards_LeaderboardUserScoreTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Leaderboards_LeaderboardUserScore() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Leaderboards_LeaderboardUserScore.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertNil(cstruct.UserId)
            XCTAssertEqual(cstruct.Score, .zero)
            let swiftObject = try XCTUnwrap(try SwiftEOS_Leaderboards_LeaderboardUserScore(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, .zero)
            XCTAssertNil(swiftObject.UserId)
            XCTAssertEqual(swiftObject.Score, .zero) }
    }
}
