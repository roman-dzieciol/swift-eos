import XCTest
import EOSSDK
@testable import SwiftEOS

public final class SwiftEOS_RTCAudio_AudioOutputStateCallbackInfoTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_RTCAudio_AudioOutputStateCallbackInfo() throws {
        try withZeroInitializedCStruct(type: _tagEOS_RTCAudio_AudioOutputStateCallbackInfo.self) { cstruct in
            XCTAssertNil(cstruct.ClientData)
            XCTAssertNil(cstruct.LocalUserId)
            XCTAssertNil(cstruct.RoomName)
            XCTAssertEqual(cstruct.Status, .zero)
            let swiftObject = try XCTUnwrap(try SwiftEOS_RTCAudio_AudioOutputStateCallbackInfo(sdkObject: cstruct))
            XCTAssertNil(swiftObject.LocalUserId)
            XCTAssertNil(swiftObject.RoomName)
            XCTAssertEqual(swiftObject.Status, .zero) }
    }
}
