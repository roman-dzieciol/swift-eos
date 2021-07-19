import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_Achievements_PlayerAchievementTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Achievements_PlayerAchievement() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Achievements_PlayerAchievement.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, EOS_ACHIEVEMENTS_PLAYERACHIEVEMENT_API_LATEST)
            XCTAssertNil(cstruct.AchievementId)
            XCTAssertEqual(cstruct.Progress, .zero)
            XCTAssertEqual(cstruct.UnlockTime, .zero)
            XCTAssertEqual(cstruct.StatInfoCount, .zero)
            XCTAssertNil(cstruct.StatInfo)
            XCTAssertNil(cstruct.DisplayName)
            XCTAssertNil(cstruct.Description)
            XCTAssertNil(cstruct.IconURL)
            XCTAssertNil(cstruct.FlavorText)
            let swiftObject = try XCTUnwrap(try SwiftEOS_Achievements_PlayerAchievement(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, EOS_ACHIEVEMENTS_PLAYERACHIEVEMENT_API_LATEST)
            XCTAssertNil(swiftObject.AchievementId)
            XCTAssertEqual(swiftObject.Progress, .zero)
            XCTAssertEqual(swiftObject.UnlockTime, .zero)
            XCTAssertNil(swiftObject.StatInfo)
            XCTAssertNil(swiftObject.DisplayName)
            XCTAssertNil(swiftObject.Description)
            XCTAssertNil(swiftObject.IconURL)
            XCTAssertNil(swiftObject.FlavorText) }
    }
}
