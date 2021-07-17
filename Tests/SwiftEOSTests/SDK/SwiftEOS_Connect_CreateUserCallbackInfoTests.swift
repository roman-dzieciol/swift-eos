import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_Connect_CreateUserCallbackInfoTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Connect_CreateUserCallbackInfo() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Connect_CreateUserCallbackInfo.self) { cstruct in
            XCTAssertEqual(cstruct.ResultCode, .init(rawValue: .zero)!)
            XCTAssertNil(cstruct.ClientData)
            XCTAssertNil(cstruct.LocalUserId)
            let swiftObject = try XCTUnwrap(try SwiftEOS_Connect_CreateUserCallbackInfo(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ResultCode, .init(rawValue: .zero)!)
            XCTAssertNil(swiftObject.LocalUserId) }
    }
}