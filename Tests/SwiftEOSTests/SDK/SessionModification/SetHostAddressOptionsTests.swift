import XCTest
import EOSSDK
@testable import SwiftEOS

public final class SwiftEOS_SessionModification_SetHostAddressOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_SessionModification_SetHostAddressOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_SessionModification_SetHostAddressOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertNil(cstruct.HostAddress)
            let swiftObject = try XCTUnwrap(try SwiftEOS_SessionModification_SetHostAddressOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, .zero)
            XCTAssertNil(swiftObject.HostAddress) }
    }
}
