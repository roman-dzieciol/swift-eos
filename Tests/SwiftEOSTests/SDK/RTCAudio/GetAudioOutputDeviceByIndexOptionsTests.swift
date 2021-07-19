import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_RTCAudio_GetAudioOutputDeviceByIndexOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_RTCAudio_GetAudioOutputDeviceByIndexOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_RTCAudio_GetAudioOutputDeviceByIndexOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, EOS_RTCAUDIO_GETAUDIOOUTPUTDEVICEBYINDEX_API_LATEST)
            XCTAssertEqual(cstruct.DeviceInfoIndex, .zero)
            let swiftObject = try XCTUnwrap(try SwiftEOS_RTCAudio_GetAudioOutputDeviceByIndexOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, EOS_RTCAUDIO_GETAUDIOOUTPUTDEVICEBYINDEX_API_LATEST)
            XCTAssertEqual(swiftObject.DeviceInfoIndex, .zero) }
    }
}
