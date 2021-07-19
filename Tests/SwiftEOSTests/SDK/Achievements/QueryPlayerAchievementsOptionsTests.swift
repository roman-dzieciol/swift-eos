import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_Achievements_QueryPlayerAchievementsOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Achievements_QueryPlayerAchievementsOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Achievements_QueryPlayerAchievementsOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, EOS_ACHIEVEMENTS_QUERYPLAYERACHIEVEMENTS_API_LATEST)
            XCTAssertNil(cstruct.TargetUserId)
            XCTAssertNil(cstruct.LocalUserId)
            let swiftObject = try XCTUnwrap(try SwiftEOS_Achievements_QueryPlayerAchievementsOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, EOS_ACHIEVEMENTS_QUERYPLAYERACHIEVEMENTS_API_LATEST)
            XCTAssertNil(swiftObject.TargetUserId)
            XCTAssertNil(swiftObject.LocalUserId) }
    }
}
