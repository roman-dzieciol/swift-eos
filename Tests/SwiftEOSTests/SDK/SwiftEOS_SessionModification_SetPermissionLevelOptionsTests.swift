import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_SessionModification_SetPermissionLevelOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_SessionModification_SetPermissionLevelOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_SessionModification_SetPermissionLevelOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertEqual(cstruct.PermissionLevel, .init(rawValue: .zero)!)
            let swiftObject = try SwiftEOS_SessionModification_SetPermissionLevelOptions(sdkObject: cstruct) }
    }
}
