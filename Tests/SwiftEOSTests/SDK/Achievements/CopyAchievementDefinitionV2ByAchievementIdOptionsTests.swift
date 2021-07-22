import XCTest
import EOSSDK
@testable import SwiftEOS

public final class SwiftEOS_Achievements_CopyAchievementDefinitionV2ByAchievementIdOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Achievements_CopyAchievementDefinitionV2ByAchievementIdOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Achievements_CopyAchievementDefinitionV2ByAchievementIdOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertNil(cstruct.AchievementId)
            let swiftObject = try XCTUnwrap(try SwiftEOS_Achievements_CopyAchievementDefinitionV2ByAchievementIdOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, .zero)
            XCTAssertNil(swiftObject.AchievementId) }
    }
}
