import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_RTCAudio_AudioInputStateCallbackInfoTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_RTCAudio_AudioInputStateCallbackInfo() throws {
        try withZeroInitializedCStruct(type: _tagEOS_RTCAudio_AudioInputStateCallbackInfo.self) { cstruct in
            XCTAssertNil(cstruct.ClientData)
            XCTAssertNil(cstruct.LocalUserId)
            XCTAssertNil(cstruct.RoomName)
            XCTAssertEqual(cstruct.Status, .init(rawValue: .zero)!)
            let swiftObject = try XCTUnwrap(try SwiftEOS_RTCAudio_AudioInputStateCallbackInfo(sdkObject: cstruct))
            XCTAssertNil(swiftObject.LocalUserId)
            XCTAssertNil(swiftObject.RoomName)
            XCTAssertEqual(swiftObject.Status, .init(rawValue: .zero)!) }
    }
}
