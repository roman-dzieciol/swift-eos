import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_RTCAudio_GetAudioInputDeviceByIndexOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_RTCAudio_GetAudioInputDeviceByIndexOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_RTCAudio_GetAudioInputDeviceByIndexOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertEqual(cstruct.DeviceInfoIndex, .zero)
            let swiftObject = try SwiftEOS_RTCAudio_GetAudioInputDeviceByIndexOptions(sdkObject: cstruct) }
    }
}
