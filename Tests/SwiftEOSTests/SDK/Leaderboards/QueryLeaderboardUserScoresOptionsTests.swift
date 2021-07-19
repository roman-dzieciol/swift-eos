import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_Leaderboards_QueryLeaderboardUserScoresOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Leaderboards_QueryLeaderboardUserScoresOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Leaderboards_QueryLeaderboardUserScoresOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, EOS_LEADERBOARDS_QUERYLEADERBOARDUSERSCORES_API_LATEST)
            XCTAssertNil(cstruct.UserIds)
            XCTAssertEqual(cstruct.UserIdsCount, .zero)
            XCTAssertNil(cstruct.StatInfo)
            XCTAssertEqual(cstruct.StatInfoCount, .zero)
            XCTAssertEqual(cstruct.StartTime, .zero)
            XCTAssertEqual(cstruct.EndTime, .zero)
            XCTAssertNil(cstruct.LocalUserId)
            let swiftObject = try XCTUnwrap(try SwiftEOS_Leaderboards_QueryLeaderboardUserScoresOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, EOS_LEADERBOARDS_QUERYLEADERBOARDUSERSCORES_API_LATEST)
            XCTAssertNil(swiftObject.UserIds)
            XCTAssertNil(swiftObject.StatInfo)
            XCTAssertEqual(swiftObject.StartTime, .zero)
            XCTAssertEqual(swiftObject.EndTime, .zero)
            XCTAssertNil(swiftObject.LocalUserId) }
    }
}
