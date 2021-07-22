import XCTest
import EOSSDK
@testable import SwiftEOS

public final class SwiftEOS_SessionDetails_CopyInfoOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_SessionDetails_CopyInfoOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_SessionDetails_CopyInfoOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            let swiftObject = try XCTUnwrap(try SwiftEOS_SessionDetails_CopyInfoOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, .zero) }
    }
}
