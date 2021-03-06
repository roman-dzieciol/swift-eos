import XCTest
import EOSSDK
@testable import SwiftEOS

public final class SwiftEOS_Achievements_CopyUnlockedAchievementByIndexOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Achievements_CopyUnlockedAchievementByIndexOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Achievements_CopyUnlockedAchievementByIndexOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertNil(cstruct.UserId)
            XCTAssertEqual(cstruct.AchievementIndex, .zero)
            let swiftObject = try XCTUnwrap(try SwiftEOS_Achievements_CopyUnlockedAchievementByIndexOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, .zero)
            XCTAssertNil(swiftObject.UserId)
            XCTAssertEqual(swiftObject.AchievementIndex, .zero) }
    }
}
