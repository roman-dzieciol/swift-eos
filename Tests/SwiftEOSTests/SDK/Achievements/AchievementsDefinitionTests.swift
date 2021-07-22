import XCTest
import EOSSDK
@testable import SwiftEOS

public final class SwiftEOS_Achievements_DefinitionTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Achievements_Definition() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Achievements_Definition.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertNil(cstruct.AchievementId)
            XCTAssertNil(cstruct.DisplayName)
            XCTAssertNil(cstruct.Description)
            XCTAssertNil(cstruct.LockedDisplayName)
            XCTAssertNil(cstruct.LockedDescription)
            XCTAssertNil(cstruct.HiddenDescription)
            XCTAssertNil(cstruct.CompletionDescription)
            XCTAssertNil(cstruct.UnlockedIconId)
            XCTAssertNil(cstruct.LockedIconId)
            XCTAssertEqual(cstruct.bIsHidden, .zero)
            XCTAssertEqual(cstruct.StatThresholdsCount, .zero)
            XCTAssertNil(cstruct.StatThresholds)
            let swiftObject = try XCTUnwrap(try SwiftEOS_Achievements_Definition(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, .zero)
            XCTAssertNil(swiftObject.AchievementId)
            XCTAssertNil(swiftObject.DisplayName)
            XCTAssertNil(swiftObject.Description)
            XCTAssertNil(swiftObject.LockedDisplayName)
            XCTAssertNil(swiftObject.LockedDescription)
            XCTAssertNil(swiftObject.HiddenDescription)
            XCTAssertNil(swiftObject.CompletionDescription)
            XCTAssertNil(swiftObject.UnlockedIconId)
            XCTAssertNil(swiftObject.LockedIconId)
            XCTAssertEqual(swiftObject.bIsHidden, false)
            XCTAssertNil(swiftObject.StatThresholds) }
    }
}
