import XCTest
import EOSSDK
@testable import SwiftEOS

public final class SwiftEOS_RTCAudio_AddNotifyAudioOutputStateOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_RTCAudio_AddNotifyAudioOutputStateOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_RTCAudio_AddNotifyAudioOutputStateOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertNil(cstruct.LocalUserId)
            XCTAssertNil(cstruct.RoomName)
            let swiftObject = try XCTUnwrap(try SwiftEOS_RTCAudio_AddNotifyAudioOutputStateOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, .zero)
            XCTAssertNil(swiftObject.LocalUserId)
            XCTAssertNil(swiftObject.RoomName) }
    }
}
