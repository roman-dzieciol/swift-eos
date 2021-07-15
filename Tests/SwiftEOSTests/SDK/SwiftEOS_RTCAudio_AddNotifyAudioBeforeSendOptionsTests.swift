import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_RTCAudio_AddNotifyAudioBeforeSendOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_RTCAudio_AddNotifyAudioBeforeSendOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_RTCAudio_AddNotifyAudioBeforeSendOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertNil(cstruct.LocalUserId)
            XCTAssertNil(cstruct.RoomName)
            let swiftObject = try SwiftEOS_RTCAudio_AddNotifyAudioBeforeSendOptions(sdkObject: cstruct) }
    }
}
