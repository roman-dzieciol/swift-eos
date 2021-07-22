import XCTest
import EOSSDK
@testable import SwiftEOS

public final class SwiftEOS_Sessions_StartSessionOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Sessions_StartSessionOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Sessions_StartSessionOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertNil(cstruct.SessionName)
            let swiftObject = try XCTUnwrap(try SwiftEOS_Sessions_StartSessionOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, .zero)
            XCTAssertNil(swiftObject.SessionName) }
    }
}
