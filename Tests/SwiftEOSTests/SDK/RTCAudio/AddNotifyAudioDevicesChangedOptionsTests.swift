import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_RTCAudio_AddNotifyAudioDevicesChangedOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_RTCAudio_AddNotifyAudioDevicesChangedOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_RTCAudio_AddNotifyAudioDevicesChangedOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            let swiftObject = try XCTUnwrap(try SwiftEOS_RTCAudio_AddNotifyAudioDevicesChangedOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, .zero) }
    }
}
