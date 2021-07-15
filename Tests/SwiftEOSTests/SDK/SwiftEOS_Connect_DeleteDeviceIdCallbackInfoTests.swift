import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_Connect_DeleteDeviceIdCallbackInfoTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Connect_DeleteDeviceIdCallbackInfo() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Connect_DeleteDeviceIdCallbackInfo.self) { cstruct in
            XCTAssertEqual(cstruct.ResultCode, .init(rawValue: .zero)!)
            XCTAssertNil(cstruct.ClientData)
            let swiftObject = try SwiftEOS_Connect_DeleteDeviceIdCallbackInfo(sdkObject: cstruct) }
    }
}
