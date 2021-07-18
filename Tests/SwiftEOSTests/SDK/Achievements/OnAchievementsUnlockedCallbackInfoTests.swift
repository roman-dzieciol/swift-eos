import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_Achievements_OnAchievementsUnlockedCallbackInfoTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Achievements_OnAchievementsUnlockedCallbackInfo() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Achievements_OnAchievementsUnlockedCallbackInfo.self) { cstruct in
            XCTAssertNil(cstruct.ClientData)
            XCTAssertNil(cstruct.UserId)
            XCTAssertEqual(cstruct.AchievementsCount, .zero)
            XCTAssertNil(cstruct.AchievementIds)
            let swiftObject = try XCTUnwrap(try SwiftEOS_Achievements_OnAchievementsUnlockedCallbackInfo(sdkObject: cstruct))
            XCTAssertNil(swiftObject.UserId)
            XCTAssertNil(swiftObject.AchievementIds) }
    }
}
