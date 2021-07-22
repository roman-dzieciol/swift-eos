import XCTest
import EOSSDK
@testable import SwiftEOS

public final class SwiftEOS_Leaderboards_CopyLeaderboardUserScoreByUserIdOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Leaderboards_CopyLeaderboardUserScoreByUserIdOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Leaderboards_CopyLeaderboardUserScoreByUserIdOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertNil(cstruct.UserId)
            XCTAssertNil(cstruct.StatName)
            let swiftObject = try XCTUnwrap(try SwiftEOS_Leaderboards_CopyLeaderboardUserScoreByUserIdOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, .zero)
            XCTAssertNil(swiftObject.UserId)
            XCTAssertNil(swiftObject.StatName) }
    }
}
