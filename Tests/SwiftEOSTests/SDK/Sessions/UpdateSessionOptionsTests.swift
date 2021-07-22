import XCTest
import EOSSDK
@testable import SwiftEOS

public final class SwiftEOS_Sessions_UpdateSessionOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Sessions_UpdateSessionOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Sessions_UpdateSessionOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertNil(cstruct.SessionModificationHandle)
            let swiftObject = try XCTUnwrap(try SwiftEOS_Sessions_UpdateSessionOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, .zero)
            XCTAssertNil(swiftObject.SessionModificationHandle) }
    }
}
