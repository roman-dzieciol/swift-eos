import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_Sessions_StartSessionOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Sessions_StartSessionOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Sessions_StartSessionOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertNil(cstruct.SessionName)
            let swiftObject = try SwiftEOS_Sessions_StartSessionOptions(sdkObject: cstruct) }
    }
}
