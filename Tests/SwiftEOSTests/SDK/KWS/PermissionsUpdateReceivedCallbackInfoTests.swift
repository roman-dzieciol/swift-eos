import XCTest
import EOSSDK
@testable import SwiftEOS

public final class SwiftEOS_KWS_PermissionsUpdateReceivedCallbackInfoTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_KWS_PermissionsUpdateReceivedCallbackInfo() throws {
        try withZeroInitializedCStruct(type: _tagEOS_KWS_PermissionsUpdateReceivedCallbackInfo.self) { cstruct in
            XCTAssertNil(cstruct.ClientData)
            XCTAssertNil(cstruct.LocalUserId)
            let swiftObject = try XCTUnwrap(try SwiftEOS_KWS_PermissionsUpdateReceivedCallbackInfo(sdkObject: cstruct))
            XCTAssertNil(swiftObject.LocalUserId) }
    }
}
