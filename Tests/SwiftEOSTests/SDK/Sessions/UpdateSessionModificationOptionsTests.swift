import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_Sessions_UpdateSessionModificationOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Sessions_UpdateSessionModificationOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Sessions_UpdateSessionModificationOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, EOS_SESSIONS_UPDATESESSIONMODIFICATION_API_LATEST)
            XCTAssertNil(cstruct.SessionName)
            let swiftObject = try XCTUnwrap(try SwiftEOS_Sessions_UpdateSessionModificationOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, EOS_SESSIONS_UPDATESESSIONMODIFICATION_API_LATEST)
            XCTAssertNil(swiftObject.SessionName) }
    }
}
