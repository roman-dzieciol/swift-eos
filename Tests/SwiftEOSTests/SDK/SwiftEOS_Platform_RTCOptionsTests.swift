import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_Platform_RTCOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Platform_RTCOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Platform_RTCOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertNil(cstruct.PlatformSpecificOptions)
            let swiftObject = try SwiftEOS_Platform_RTCOptions(sdkObject: cstruct) }
    }
}
