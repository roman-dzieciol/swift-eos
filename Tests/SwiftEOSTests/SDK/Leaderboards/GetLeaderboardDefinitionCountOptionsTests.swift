import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_Leaderboards_GetLeaderboardDefinitionCountOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Leaderboards_GetLeaderboardDefinitionCountOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Leaderboards_GetLeaderboardDefinitionCountOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, EOS_LEADERBOARDS_GETLEADERBOARDDEFINITIONCOUNT_API_LATEST)
            let swiftObject = try XCTUnwrap(try SwiftEOS_Leaderboards_GetLeaderboardDefinitionCountOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, EOS_LEADERBOARDS_GETLEADERBOARDDEFINITIONCOUNT_API_LATEST) }
    }
}
