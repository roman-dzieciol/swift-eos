import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_Achievements_CopyUnlockedAchievementByAchievementIdOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Achievements_CopyUnlockedAchievementByAchievementIdOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Achievements_CopyUnlockedAchievementByAchievementIdOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, EOS_ACHIEVEMENTS_COPYUNLOCKEDACHIEVEMENTBYACHIEVEMENTID_API_LATEST)
            XCTAssertNil(cstruct.UserId)
            XCTAssertNil(cstruct.AchievementId)
            let swiftObject = try XCTUnwrap(try SwiftEOS_Achievements_CopyUnlockedAchievementByAchievementIdOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, EOS_ACHIEVEMENTS_COPYUNLOCKEDACHIEVEMENTBYACHIEVEMENTID_API_LATEST)
            XCTAssertNil(swiftObject.UserId)
            XCTAssertNil(swiftObject.AchievementId) }
    }
}
