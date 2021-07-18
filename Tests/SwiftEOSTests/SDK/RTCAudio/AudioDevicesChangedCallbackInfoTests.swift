import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_RTCAudio_AudioDevicesChangedCallbackInfoTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_RTCAudio_AudioDevicesChangedCallbackInfo() throws {
        try withZeroInitializedCStruct(type: _tagEOS_RTCAudio_AudioDevicesChangedCallbackInfo.self) { cstruct in
            XCTAssertNil(cstruct.ClientData)
            let swiftObject = try XCTUnwrap(try SwiftEOS_RTCAudio_AudioDevicesChangedCallbackInfo(sdkObject: cstruct))
        }
    }
}
