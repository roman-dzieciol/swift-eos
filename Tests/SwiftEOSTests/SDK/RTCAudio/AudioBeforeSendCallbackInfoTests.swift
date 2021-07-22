import XCTest
import EOSSDK
@testable import SwiftEOS

public final class SwiftEOS_RTCAudio_AudioBeforeSendCallbackInfoTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_RTCAudio_AudioBeforeSendCallbackInfo() throws {
        try withZeroInitializedCStruct(type: _tagEOS_RTCAudio_AudioBeforeSendCallbackInfo.self) { cstruct in
            XCTAssertNil(cstruct.ClientData)
            XCTAssertNil(cstruct.LocalUserId)
            XCTAssertNil(cstruct.RoomName)
            XCTAssertNil(cstruct.Buffer)
            let swiftObject = try XCTUnwrap(try SwiftEOS_RTCAudio_AudioBeforeSendCallbackInfo(sdkObject: cstruct))
            XCTAssertNil(swiftObject.LocalUserId)
            XCTAssertNil(swiftObject.RoomName)
            XCTAssertNil(swiftObject.Buffer) }
    }
}
