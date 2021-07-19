import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_SessionDetails_InfoTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_SessionDetails_Info() throws {
        try withZeroInitializedCStruct(type: _tagEOS_SessionDetails_Info.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, EOS_SESSIONDETAILS_INFO_API_LATEST)
            XCTAssertNil(cstruct.SessionId)
            XCTAssertNil(cstruct.HostAddress)
            XCTAssertEqual(cstruct.NumOpenPublicConnections, .zero)
            XCTAssertNil(cstruct.Settings)
            let swiftObject = try XCTUnwrap(try SwiftEOS_SessionDetails_Info(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, EOS_SESSIONDETAILS_INFO_API_LATEST)
            XCTAssertNil(swiftObject.SessionId)
            XCTAssertNil(swiftObject.HostAddress)
            XCTAssertEqual(swiftObject.NumOpenPublicConnections, .zero)
            XCTAssertNil(swiftObject.Settings) }
    }
}
