import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_Achievements_UnlockAchievementsOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Achievements_UnlockAchievementsOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Achievements_UnlockAchievementsOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertNil(cstruct.UserId)
            XCTAssertNil(cstruct.AchievementIds)
            XCTAssertEqual(cstruct.AchievementsCount, .zero)
            let swiftObject = try SwiftEOS_Achievements_UnlockAchievementsOptions(sdkObject: cstruct) }
    }
}
