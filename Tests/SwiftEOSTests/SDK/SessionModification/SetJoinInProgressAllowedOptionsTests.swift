import XCTest
import EOSSDK
@testable import SwiftEOS

public final class SwiftEOS_SessionModification_SetJoinInProgressAllowedOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_SessionModification_SetJoinInProgressAllowedOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_SessionModification_SetJoinInProgressAllowedOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertEqual(cstruct.bAllowJoinInProgress, .zero)
            let swiftObject = try XCTUnwrap(try SwiftEOS_SessionModification_SetJoinInProgressAllowedOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, .zero)
            XCTAssertEqual(swiftObject.bAllowJoinInProgress, false) }
    }
}
