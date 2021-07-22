import XCTest
import EOSSDK
@testable import SwiftEOS

public final class SwiftEOS_Achievements_CopyPlayerAchievementByAchievementIdOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Achievements_CopyPlayerAchievementByAchievementIdOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Achievements_CopyPlayerAchievementByAchievementIdOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertNil(cstruct.TargetUserId)
            XCTAssertNil(cstruct.AchievementId)
            XCTAssertNil(cstruct.LocalUserId)
            let swiftObject = try XCTUnwrap(try SwiftEOS_Achievements_CopyPlayerAchievementByAchievementIdOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, .zero)
            XCTAssertNil(swiftObject.TargetUserId)
            XCTAssertNil(swiftObject.AchievementId)
            XCTAssertNil(swiftObject.LocalUserId) }
    }
}
