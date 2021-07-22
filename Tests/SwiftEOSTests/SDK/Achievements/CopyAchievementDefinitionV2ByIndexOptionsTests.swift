import XCTest
import EOSSDK
@testable import SwiftEOS

public final class SwiftEOS_Achievements_CopyAchievementDefinitionV2ByIndexOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Achievements_CopyAchievementDefinitionV2ByIndexOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Achievements_CopyAchievementDefinitionV2ByIndexOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertEqual(cstruct.AchievementIndex, .zero)
            let swiftObject = try XCTUnwrap(try SwiftEOS_Achievements_CopyAchievementDefinitionV2ByIndexOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, .zero)
            XCTAssertEqual(swiftObject.AchievementIndex, .zero) }
    }
}
