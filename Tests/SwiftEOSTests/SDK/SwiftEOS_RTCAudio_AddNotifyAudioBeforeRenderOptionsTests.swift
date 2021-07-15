import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_RTCAudio_AddNotifyAudioBeforeRenderOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_RTCAudio_AddNotifyAudioBeforeRenderOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_RTCAudio_AddNotifyAudioBeforeRenderOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertNil(cstruct.LocalUserId)
            XCTAssertNil(cstruct.RoomName)
            XCTAssertEqual(cstruct.bUnmixedAudio, .zero)
            let swiftObject = try SwiftEOS_RTCAudio_AddNotifyAudioBeforeRenderOptions(sdkObject: cstruct) }
    }
}
