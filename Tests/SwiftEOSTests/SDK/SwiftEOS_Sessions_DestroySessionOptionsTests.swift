import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_Sessions_DestroySessionOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Sessions_DestroySessionOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Sessions_DestroySessionOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertNil(cstruct.SessionName)
            let swiftObject = try XCTUnwrap(try SwiftEOS_Sessions_DestroySessionOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, .zero)
            XCTAssertNil(swiftObject.SessionName) }
    }
}
