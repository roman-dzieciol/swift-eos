import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_Achievements_OnAchievementsUnlockedCallbackV2InfoTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Achievements_OnAchievementsUnlockedCallbackV2Info() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Achievements_OnAchievementsUnlockedCallbackV2Info.self) { cstruct in
            XCTAssertNil(cstruct.ClientData)
            XCTAssertNil(cstruct.UserId)
            XCTAssertNil(cstruct.AchievementId)
            XCTAssertEqual(cstruct.UnlockTime, .zero)
            let swiftObject = try XCTUnwrap(try SwiftEOS_Achievements_OnAchievementsUnlockedCallbackV2Info(sdkObject: cstruct))
            XCTAssertNil(swiftObject.UserId)
            XCTAssertNil(swiftObject.AchievementId)
            XCTAssertEqual(swiftObject.UnlockTime, .zero) }
    }
}
