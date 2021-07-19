import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_RTCAudio_GetAudioInputDeviceByIndexOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_RTCAudio_GetAudioInputDeviceByIndexOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_RTCAudio_GetAudioInputDeviceByIndexOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, EOS_RTCAUDIO_GETAUDIOINPUTDEVICEBYINDEX_API_LATEST)
            XCTAssertEqual(cstruct.DeviceInfoIndex, .zero)
            let swiftObject = try XCTUnwrap(try SwiftEOS_RTCAudio_GetAudioInputDeviceByIndexOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, EOS_RTCAUDIO_GETAUDIOINPUTDEVICEBYINDEX_API_LATEST)
            XCTAssertEqual(swiftObject.DeviceInfoIndex, .zero) }
    }
}
