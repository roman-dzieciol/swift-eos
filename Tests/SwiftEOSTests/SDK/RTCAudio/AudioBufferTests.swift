import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_RTCAudio_AudioBufferTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_RTCAudio_AudioBuffer() throws {
        try withZeroInitializedCStruct(type: _tagEOS_RTCAudio_AudioBuffer.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, EOS_RTCAUDIO_AUDIOBUFFER_API_LATEST)
            XCTAssertNil(cstruct.Frames)
            XCTAssertEqual(cstruct.FramesCount, .zero)
            XCTAssertEqual(cstruct.SampleRate, .zero)
            XCTAssertEqual(cstruct.Channels, .zero)
            let swiftObject = try XCTUnwrap(try SwiftEOS_RTCAudio_AudioBuffer(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, EOS_RTCAUDIO_AUDIOBUFFER_API_LATEST)
            XCTAssertNil(swiftObject.Frames)
            XCTAssertEqual(swiftObject.SampleRate, .zero)
            XCTAssertEqual(swiftObject.Channels, .zero) }
    }
}
