import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_Leaderboards_GetLeaderboardUserScoreCountOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Leaderboards_GetLeaderboardUserScoreCountOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Leaderboards_GetLeaderboardUserScoreCountOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertNil(cstruct.StatName)
            let swiftObject = try XCTUnwrap(try SwiftEOS_Leaderboards_GetLeaderboardUserScoreCountOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, .zero)
            XCTAssertNil(swiftObject.StatName) }
    }
}
