import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_Sessions_UpdateSessionModificationOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Sessions_UpdateSessionModificationOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Sessions_UpdateSessionModificationOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertNil(cstruct.SessionName)
            let swiftObject = try SwiftEOS_Sessions_UpdateSessionModificationOptions(sdkObject: cstruct) }
    }
}
