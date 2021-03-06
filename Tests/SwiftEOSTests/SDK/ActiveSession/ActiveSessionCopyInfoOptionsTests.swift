import XCTest
import EOSSDK
@testable import SwiftEOS

public final class SwiftEOS_ActiveSession_CopyInfoOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_ActiveSession_CopyInfoOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_ActiveSession_CopyInfoOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            let swiftObject = try XCTUnwrap(try SwiftEOS_ActiveSession_CopyInfoOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, .zero) }
    }
}
