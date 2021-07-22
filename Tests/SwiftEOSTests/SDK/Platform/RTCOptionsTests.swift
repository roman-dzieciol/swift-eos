import XCTest
import EOSSDK
@testable import SwiftEOS

public final class SwiftEOS_Platform_RTCOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Platform_RTCOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Platform_RTCOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertNil(cstruct.PlatformSpecificOptions)
            let swiftObject = try XCTUnwrap(try SwiftEOS_Platform_RTCOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, .zero)
            XCTAssertNil(swiftObject.PlatformSpecificOptions) }
    }
}
