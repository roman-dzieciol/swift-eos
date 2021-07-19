import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_Connect_LinkAccountOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Connect_LinkAccountOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Connect_LinkAccountOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, EOS_CONNECT_LINKACCOUNT_API_LATEST)
            XCTAssertNil(cstruct.LocalUserId)
            XCTAssertNil(cstruct.ContinuanceToken)
            let swiftObject = try XCTUnwrap(try SwiftEOS_Connect_LinkAccountOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, EOS_CONNECT_LINKACCOUNT_API_LATEST)
            XCTAssertNil(swiftObject.LocalUserId)
            XCTAssertNil(swiftObject.ContinuanceToken) }
    }
}
