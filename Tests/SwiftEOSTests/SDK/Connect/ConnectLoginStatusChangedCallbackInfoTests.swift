import XCTest
import EOSSDK
@testable import SwiftEOS

public final class SwiftEOS_Connect_LoginStatusChangedCallbackInfoTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Connect_LoginStatusChangedCallbackInfo() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Connect_LoginStatusChangedCallbackInfo.self) { cstruct in
            XCTAssertNil(cstruct.ClientData)
            XCTAssertNil(cstruct.LocalUserId)
            XCTAssertEqual(cstruct.PreviousStatus, .zero)
            XCTAssertEqual(cstruct.CurrentStatus, .zero)
            let swiftObject = try XCTUnwrap(try SwiftEOS_Connect_LoginStatusChangedCallbackInfo(sdkObject: cstruct))
            XCTAssertNil(swiftObject.LocalUserId)
            XCTAssertEqual(swiftObject.PreviousStatus, .zero)
            XCTAssertEqual(swiftObject.CurrentStatus, .zero) }
    }
}
