import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_Achievements_OnUnlockAchievementsCompleteCallbackInfoTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Achievements_OnUnlockAchievementsCompleteCallbackInfo() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Achievements_OnUnlockAchievementsCompleteCallbackInfo.self) { cstruct in
            XCTAssertEqual(cstruct.ResultCode, .init(rawValue: .zero)!)
            XCTAssertNil(cstruct.ClientData)
            XCTAssertNil(cstruct.UserId)
            XCTAssertEqual(cstruct.AchievementsCount, .zero)
            let swiftObject = try SwiftEOS_Achievements_OnUnlockAchievementsCompleteCallbackInfo(sdkObject: cstruct) }
    }
}
