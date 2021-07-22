import XCTest
import EOSSDK
@testable import SwiftEOS

public final class SwiftEOS_Achievements_CopyPlayerAchievementByIndexOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Achievements_CopyPlayerAchievementByIndexOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Achievements_CopyPlayerAchievementByIndexOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertNil(cstruct.TargetUserId)
            XCTAssertEqual(cstruct.AchievementIndex, .zero)
            XCTAssertNil(cstruct.LocalUserId)
            let swiftObject = try XCTUnwrap(try SwiftEOS_Achievements_CopyPlayerAchievementByIndexOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, .zero)
            XCTAssertNil(swiftObject.TargetUserId)
            XCTAssertEqual(swiftObject.AchievementIndex, .zero)
            XCTAssertNil(swiftObject.LocalUserId) }
    }
}
