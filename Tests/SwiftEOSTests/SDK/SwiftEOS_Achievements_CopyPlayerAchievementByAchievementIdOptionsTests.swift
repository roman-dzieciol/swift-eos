import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_Achievements_CopyPlayerAchievementByAchievementIdOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Achievements_CopyPlayerAchievementByAchievementIdOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Achievements_CopyPlayerAchievementByAchievementIdOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertNil(cstruct.TargetUserId)
            XCTAssertNil(cstruct.AchievementId)
            XCTAssertNil(cstruct.LocalUserId)
            let swiftObject = try SwiftEOS_Achievements_CopyPlayerAchievementByAchievementIdOptions(sdkObject: cstruct) }
    }
}
