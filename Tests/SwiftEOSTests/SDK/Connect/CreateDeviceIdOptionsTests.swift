import XCTest
import EOSSDK
@testable import SwiftEOS

public final class SwiftEOS_Connect_CreateDeviceIdOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Connect_CreateDeviceIdOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Connect_CreateDeviceIdOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertNil(cstruct.DeviceModel)
            let swiftObject = try XCTUnwrap(try SwiftEOS_Connect_CreateDeviceIdOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, .zero)
            XCTAssertNil(swiftObject.DeviceModel) }
    }
}
