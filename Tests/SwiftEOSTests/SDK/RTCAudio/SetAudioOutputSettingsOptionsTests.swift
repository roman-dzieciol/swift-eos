import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_RTCAudio_SetAudioOutputSettingsOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_RTCAudio_SetAudioOutputSettingsOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_RTCAudio_SetAudioOutputSettingsOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, EOS_RTCAUDIO_SETAUDIOOUTPUTSETTINGS_API_LATEST)
            XCTAssertNil(cstruct.LocalUserId)
            XCTAssertNil(cstruct.DeviceId)
            XCTAssertEqual(cstruct.Volume, .zero)
            let swiftObject = try XCTUnwrap(try SwiftEOS_RTCAudio_SetAudioOutputSettingsOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, EOS_RTCAUDIO_SETAUDIOOUTPUTSETTINGS_API_LATEST)
            XCTAssertNil(swiftObject.LocalUserId)
            XCTAssertNil(swiftObject.DeviceId)
            XCTAssertEqual(swiftObject.Volume, .zero) }
    }
}
