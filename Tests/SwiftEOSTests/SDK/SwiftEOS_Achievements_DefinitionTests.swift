import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_Achievements_DefinitionTests: XCTestCase {
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
            let swiftObject = try SwiftEOS_Achievements_Definition(sdkObject: cstruct) }
    }
}
