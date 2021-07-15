import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_RTCAudio_AudioInputDeviceInfoTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_RTCAudio_AudioInputDeviceInfo() throws {
        try withZeroInitializedCStruct(type: _tagEOS_RTCAudio_AudioInputDeviceInfo.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertEqual(cstruct.bDefaultDevice, .zero)
            XCTAssertNil(cstruct.DeviceId)
            XCTAssertNil(cstruct.DeviceName)
            let swiftObject = try SwiftEOS_RTCAudio_AudioInputDeviceInfo(sdkObject: cstruct) }
    }
}
