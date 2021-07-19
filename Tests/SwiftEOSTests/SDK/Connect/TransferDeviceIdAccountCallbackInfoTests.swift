import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_Connect_TransferDeviceIdAccountCallbackInfoTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Connect_TransferDeviceIdAccountCallbackInfo() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Connect_TransferDeviceIdAccountCallbackInfo.self) { cstruct in
            XCTAssertEqual(cstruct.ResultCode, .zero)
            XCTAssertNil(cstruct.ClientData)
            XCTAssertNil(cstruct.LocalUserId)
            let swiftObject = try XCTUnwrap(try SwiftEOS_Connect_TransferDeviceIdAccountCallbackInfo(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ResultCode, .zero)
            XCTAssertNil(swiftObject.LocalUserId) }
    }
}
