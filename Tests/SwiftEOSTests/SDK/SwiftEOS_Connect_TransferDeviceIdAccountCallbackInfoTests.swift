import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_Connect_TransferDeviceIdAccountCallbackInfoTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Connect_TransferDeviceIdAccountCallbackInfo() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Connect_TransferDeviceIdAccountCallbackInfo.self) { cstruct in
            XCTAssertEqual(cstruct.ResultCode, .init(rawValue: .zero)!)
            XCTAssertNil(cstruct.ClientData)
            XCTAssertNil(cstruct.LocalUserId)
            let swiftObject = try SwiftEOS_Connect_TransferDeviceIdAccountCallbackInfo(sdkObject: cstruct) }
    }
}
