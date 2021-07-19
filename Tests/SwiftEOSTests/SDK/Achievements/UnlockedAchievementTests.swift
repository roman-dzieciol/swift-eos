import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_Achievements_UnlockedAchievementTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Achievements_UnlockedAchievement() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Achievements_UnlockedAchievement.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, EOS_ACHIEVEMENTS_UNLOCKEDACHIEVEMENT_API_LATEST)
            XCTAssertNil(cstruct.AchievementId)
            XCTAssertEqual(cstruct.UnlockTime, .zero)
            let swiftObject = try XCTUnwrap(try SwiftEOS_Achievements_UnlockedAchievement(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, EOS_ACHIEVEMENTS_UNLOCKEDACHIEVEMENT_API_LATEST)
            XCTAssertNil(swiftObject.AchievementId)
            XCTAssertEqual(swiftObject.UnlockTime, .zero) }
    }
}
