import XCTest
import EOSSDK
@testable import SwiftEOS

public final class SwiftEOS_RTCAudio_AddNotifyAudioBeforeRenderOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_RTCAudio_AddNotifyAudioBeforeRenderOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_RTCAudio_AddNotifyAudioBeforeRenderOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertNil(cstruct.LocalUserId)
            XCTAssertNil(cstruct.RoomName)
            XCTAssertEqual(cstruct.bUnmixedAudio, .zero)
            let swiftObject = try XCTUnwrap(try SwiftEOS_RTCAudio_AddNotifyAudioBeforeRenderOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, .zero)
            XCTAssertNil(swiftObject.LocalUserId)
            XCTAssertNil(swiftObject.RoomName)
            XCTAssertEqual(swiftObject.bUnmixedAudio, false) }
    }
}
