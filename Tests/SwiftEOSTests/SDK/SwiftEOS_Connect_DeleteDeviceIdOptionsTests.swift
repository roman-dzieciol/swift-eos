import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_Connect_DeleteDeviceIdOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Connect_DeleteDeviceIdOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Connect_DeleteDeviceIdOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            let swiftObject = try XCTUnwrap(try SwiftEOS_Connect_DeleteDeviceIdOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, .zero) }
    }
}
