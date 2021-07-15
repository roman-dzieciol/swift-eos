import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_Achievements_CopyAchievementDefinitionByAchievementIdOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Achievements_CopyAchievementDefinitionByAchievementIdOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Achievements_CopyAchievementDefinitionByAchievementIdOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertNil(cstruct.AchievementId)
            let swiftObject = try SwiftEOS_Achievements_CopyAchievementDefinitionByAchievementIdOptions(sdkObject: cstruct) }
    }
}
