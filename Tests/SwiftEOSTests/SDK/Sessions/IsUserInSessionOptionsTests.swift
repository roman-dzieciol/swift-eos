import XCTest
import EOSSDK
@testable import SwiftEOS

public final class SwiftEOS_Sessions_IsUserInSessionOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Sessions_IsUserInSessionOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Sessions_IsUserInSessionOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertNil(cstruct.SessionName)
            XCTAssertNil(cstruct.TargetUserId)
            let swiftObject = try XCTUnwrap(try SwiftEOS_Sessions_IsUserInSessionOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, .zero)
            XCTAssertNil(swiftObject.SessionName)
            XCTAssertNil(swiftObject.TargetUserId) }
    }
}
