import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_Leaderboards_CopyLeaderboardDefinitionByIndexOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Leaderboards_CopyLeaderboardDefinitionByIndexOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Leaderboards_CopyLeaderboardDefinitionByIndexOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertEqual(cstruct.LeaderboardIndex, .zero)
            let swiftObject = try SwiftEOS_Leaderboards_CopyLeaderboardDefinitionByIndexOptions(sdkObject: cstruct) }
    }
}
