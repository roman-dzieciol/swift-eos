import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_Connect_LinkAccountCallbackInfoTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Connect_LinkAccountCallbackInfo() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Connect_LinkAccountCallbackInfo.self) { cstruct in
            XCTAssertEqual(cstruct.ResultCode, .init(rawValue: .zero)!)
            XCTAssertNil(cstruct.ClientData)
            XCTAssertNil(cstruct.LocalUserId)
            let swiftObject = try SwiftEOS_Connect_LinkAccountCallbackInfo(sdkObject: cstruct) }
    }
}
