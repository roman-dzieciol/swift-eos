import XCTest
import EOSSDK
@testable import SwiftEOS

public final class SwiftEOS_Achievements_AddNotifyAchievementsUnlockedV2OptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Achievements_AddNotifyAchievementsUnlockedV2Options() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Achievements_AddNotifyAchievementsUnlockedV2Options.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            let swiftObject = try XCTUnwrap(try SwiftEOS_Achievements_AddNotifyAchievementsUnlockedV2Options(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, .zero) }
    }
}
