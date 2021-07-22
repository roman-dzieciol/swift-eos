import XCTest
import EOSSDK
@testable import SwiftEOS

public final class SwiftEOS_Connect_DeleteDeviceIdCallbackInfoTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Connect_DeleteDeviceIdCallbackInfo() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Connect_DeleteDeviceIdCallbackInfo.self) { cstruct in
            XCTAssertEqual(cstruct.ResultCode, .zero)
            XCTAssertNil(cstruct.ClientData)
            let swiftObject = try XCTUnwrap(try SwiftEOS_Connect_DeleteDeviceIdCallbackInfo(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ResultCode, .zero) }
    }
}
