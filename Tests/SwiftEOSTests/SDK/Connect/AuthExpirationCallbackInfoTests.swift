import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_Connect_AuthExpirationCallbackInfoTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Connect_AuthExpirationCallbackInfo() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Connect_AuthExpirationCallbackInfo.self) { cstruct in
            XCTAssertNil(cstruct.ClientData)
            XCTAssertNil(cstruct.LocalUserId)
            let swiftObject = try XCTUnwrap(try SwiftEOS_Connect_AuthExpirationCallbackInfo(sdkObject: cstruct))
            XCTAssertNil(swiftObject.LocalUserId) }
    }
}
