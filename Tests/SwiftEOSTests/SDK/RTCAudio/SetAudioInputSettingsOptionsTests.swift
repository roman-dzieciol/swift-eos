import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_RTCAudio_SetAudioInputSettingsOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_RTCAudio_SetAudioInputSettingsOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_RTCAudio_SetAudioInputSettingsOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, EOS_RTCAUDIO_SETAUDIOINPUTSETTINGS_API_LATEST)
            XCTAssertNil(cstruct.LocalUserId)
            XCTAssertNil(cstruct.DeviceId)
            XCTAssertEqual(cstruct.Volume, .zero)
            XCTAssertEqual(cstruct.bPlatformAEC, .zero)
            let swiftObject = try XCTUnwrap(try SwiftEOS_RTCAudio_SetAudioInputSettingsOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, EOS_RTCAUDIO_SETAUDIOINPUTSETTINGS_API_LATEST)
            XCTAssertNil(swiftObject.LocalUserId)
            XCTAssertNil(swiftObject.DeviceId)
            XCTAssertEqual(swiftObject.Volume, .zero)
            XCTAssertEqual(swiftObject.bPlatformAEC, false) }
    }
}
