import XCTest
import EOSSDK
@testable import SwiftEOS

public final class SwiftEOS_Achievements_CopyAchievementDefinitionByIndexOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Achievements_CopyAchievementDefinitionByIndexOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Achievements_CopyAchievementDefinitionByIndexOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertEqual(cstruct.AchievementIndex, .zero)
            let swiftObject = try XCTUnwrap(try SwiftEOS_Achievements_CopyAchievementDefinitionByIndexOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, .zero)
            XCTAssertEqual(swiftObject.AchievementIndex, .zero) }
    }
}
