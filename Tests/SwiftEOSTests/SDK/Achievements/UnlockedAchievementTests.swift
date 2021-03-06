import XCTest
import EOSSDK
@testable import SwiftEOS

public final class SwiftEOS_Achievements_UnlockedAchievementTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Achievements_UnlockedAchievement() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Achievements_UnlockedAchievement.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertNil(cstruct.AchievementId)
            XCTAssertEqual(cstruct.UnlockTime, .zero)
            let swiftObject = try XCTUnwrap(try SwiftEOS_Achievements_UnlockedAchievement(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, .zero)
            XCTAssertNil(swiftObject.AchievementId)
            XCTAssertEqual(swiftObject.UnlockTime, .zero) }
    }
}
