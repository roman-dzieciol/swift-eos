import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_RTCAudio_GetAudioOutputDevicesCountOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_RTCAudio_GetAudioOutputDevicesCountOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_RTCAudio_GetAudioOutputDevicesCountOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, EOS_RTCAUDIO_GETAUDIOOUTPUTDEVICESCOUNT_API_LATEST)
            let swiftObject = try XCTUnwrap(try SwiftEOS_RTCAudio_GetAudioOutputDevicesCountOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, EOS_RTCAUDIO_GETAUDIOOUTPUTDEVICESCOUNT_API_LATEST) }
    }
}
