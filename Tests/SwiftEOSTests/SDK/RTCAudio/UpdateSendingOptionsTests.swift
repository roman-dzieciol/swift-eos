import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_RTCAudio_UpdateSendingOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_RTCAudio_UpdateSendingOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_RTCAudio_UpdateSendingOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, EOS_RTCAUDIO_UPDATESENDING_API_LATEST)
            XCTAssertNil(cstruct.LocalUserId)
            XCTAssertNil(cstruct.RoomName)
            XCTAssertEqual(cstruct.AudioStatus, .zero)
            let swiftObject = try XCTUnwrap(try SwiftEOS_RTCAudio_UpdateSendingOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, EOS_RTCAUDIO_UPDATESENDING_API_LATEST)
            XCTAssertNil(swiftObject.LocalUserId)
            XCTAssertNil(swiftObject.RoomName)
            XCTAssertEqual(swiftObject.AudioStatus, .zero) }
    }
}
