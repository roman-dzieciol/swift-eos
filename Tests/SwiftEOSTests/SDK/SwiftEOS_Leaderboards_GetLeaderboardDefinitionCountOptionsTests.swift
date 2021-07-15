import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_Leaderboards_GetLeaderboardDefinitionCountOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Leaderboards_GetLeaderboardDefinitionCountOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Leaderboards_GetLeaderboardDefinitionCountOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            let swiftObject = try SwiftEOS_Leaderboards_GetLeaderboardDefinitionCountOptions(sdkObject: cstruct) }
    }
}
