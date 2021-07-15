import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_Achievements_CopyAchievementDefinitionV2ByAchievementIdOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Achievements_CopyAchievementDefinitionV2ByAchievementIdOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Achievements_CopyAchievementDefinitionV2ByAchievementIdOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertNil(cstruct.AchievementId)
            let swiftObject = try SwiftEOS_Achievements_CopyAchievementDefinitionV2ByAchievementIdOptions(sdkObject: cstruct) }
    }
}
