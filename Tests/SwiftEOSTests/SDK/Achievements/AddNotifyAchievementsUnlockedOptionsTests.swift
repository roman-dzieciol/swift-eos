import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_Achievements_AddNotifyAchievementsUnlockedOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Achievements_AddNotifyAchievementsUnlockedOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Achievements_AddNotifyAchievementsUnlockedOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, EOS_ACHIEVEMENTS_ADDNOTIFYACHIEVEMENTSUNLOCKED_API_LATEST)
            let swiftObject = try XCTUnwrap(try SwiftEOS_Achievements_AddNotifyAchievementsUnlockedOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, EOS_ACHIEVEMENTS_ADDNOTIFYACHIEVEMENTSUNLOCKED_API_LATEST) }
    }
}
