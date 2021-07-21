import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_Achievements_GetAchievementDefinitionCountOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Achievements_GetAchievementDefinitionCountOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Achievements_GetAchievementDefinitionCountOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            let swiftObject = try XCTUnwrap(try SwiftEOS_Achievements_GetAchievementDefinitionCountOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, .zero) }
    }
}
