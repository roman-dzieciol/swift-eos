import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_Auth_LinkAccountCallbackInfoTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Auth_LinkAccountCallbackInfo() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Auth_LinkAccountCallbackInfo.self) { cstruct in
            XCTAssertEqual(cstruct.ResultCode, .init(rawValue: .zero)!)
            XCTAssertNil(cstruct.ClientData)
            XCTAssertNil(cstruct.LocalUserId)
            XCTAssertNil(cstruct.PinGrantInfo)
            let swiftObject = try XCTUnwrap(try SwiftEOS_Auth_LinkAccountCallbackInfo(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ResultCode, .init(rawValue: .zero)!)
            XCTAssertNil(swiftObject.LocalUserId)
            XCTAssertNil(swiftObject.PinGrantInfo) }
    }
}
