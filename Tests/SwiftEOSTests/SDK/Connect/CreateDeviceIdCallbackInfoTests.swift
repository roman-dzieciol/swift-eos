import XCTest
import EOSSDK
@testable import SwiftEOS

public final class SwiftEOS_Connect_CreateDeviceIdCallbackInfoTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Connect_CreateDeviceIdCallbackInfo() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Connect_CreateDeviceIdCallbackInfo.self) { cstruct in
            XCTAssertEqual(cstruct.ResultCode, .zero)
            XCTAssertNil(cstruct.ClientData)
            let swiftObject = try XCTUnwrap(try SwiftEOS_Connect_CreateDeviceIdCallbackInfo(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ResultCode, .zero) }
    }
}
