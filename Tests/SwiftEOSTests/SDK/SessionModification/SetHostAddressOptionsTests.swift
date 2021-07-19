import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_SessionModification_SetHostAddressOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_SessionModification_SetHostAddressOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_SessionModification_SetHostAddressOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, EOS_SESSIONMODIFICATION_SETHOSTADDRESS_API_LATEST)
            XCTAssertNil(cstruct.HostAddress)
            let swiftObject = try XCTUnwrap(try SwiftEOS_SessionModification_SetHostAddressOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, EOS_SESSIONMODIFICATION_SETHOSTADDRESS_API_LATEST)
            XCTAssertNil(swiftObject.HostAddress) }
    }
}
