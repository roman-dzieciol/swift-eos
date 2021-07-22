import XCTest
import EOSSDK
@testable import SwiftEOS

public final class SwiftEOS_RTCAudio_GetAudioInputDevicesCountOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_RTCAudio_GetAudioInputDevicesCountOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_RTCAudio_GetAudioInputDevicesCountOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            let swiftObject = try XCTUnwrap(try SwiftEOS_RTCAudio_GetAudioInputDevicesCountOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, .zero) }
    }
}
