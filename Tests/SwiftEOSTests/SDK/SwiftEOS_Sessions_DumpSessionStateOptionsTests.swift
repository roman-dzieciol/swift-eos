import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_Sessions_DumpSessionStateOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Sessions_DumpSessionStateOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Sessions_DumpSessionStateOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertNil(cstruct.SessionName)
            let swiftObject = try SwiftEOS_Sessions_DumpSessionStateOptions(sdkObject: cstruct) }
    }
}
