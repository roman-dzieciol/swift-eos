import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_Achievements_UnlockedAchievementTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Achievements_UnlockedAchievement() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Achievements_UnlockedAchievement.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertNil(cstruct.AchievementId)
            XCTAssertEqual(cstruct.UnlockTime, .zero)
            let swiftObject = try SwiftEOS_Achievements_UnlockedAchievement(sdkObject: cstruct) }
    }
}
