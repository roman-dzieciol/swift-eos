import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_Achievements_QueryPlayerAchievementsOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Achievements_QueryPlayerAchievementsOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Achievements_QueryPlayerAchievementsOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertNil(cstruct.TargetUserId)
            XCTAssertNil(cstruct.LocalUserId)
            let swiftObject = try SwiftEOS_Achievements_QueryPlayerAchievementsOptions(sdkObject: cstruct) }
    }
}
