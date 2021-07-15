import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_RTCAudio_SetAudioOutputSettingsOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_RTCAudio_SetAudioOutputSettingsOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_RTCAudio_SetAudioOutputSettingsOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertNil(cstruct.LocalUserId)
            XCTAssertNil(cstruct.DeviceId)
            XCTAssertEqual(cstruct.Volume, .zero)
            let swiftObject = try SwiftEOS_RTCAudio_SetAudioOutputSettingsOptions(sdkObject: cstruct) }
    }
}
