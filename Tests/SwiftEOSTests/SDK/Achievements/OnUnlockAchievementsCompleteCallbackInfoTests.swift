import XCTest
import EOSSDK
@testable import SwiftEOS

public final class SwiftEOS_Achievements_OnUnlockAchievementsCompleteCallbackInfoTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Achievements_OnUnlockAchievementsCompleteCallbackInfo() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Achievements_OnUnlockAchievementsCompleteCallbackInfo.self) { cstruct in
            XCTAssertEqual(cstruct.ResultCode, .zero)
            XCTAssertNil(cstruct.ClientData)
            XCTAssertNil(cstruct.UserId)
            XCTAssertEqual(cstruct.AchievementsCount, .zero)
            let swiftObject = try XCTUnwrap(try SwiftEOS_Achievements_OnUnlockAchievementsCompleteCallbackInfo(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ResultCode, .zero)
            XCTAssertNil(swiftObject.UserId)
            XCTAssertEqual(swiftObject.AchievementsCount, .zero) }
    }
}
