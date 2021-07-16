import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_Sessions_JoinSessionOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Sessions_JoinSessionOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Sessions_JoinSessionOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertNil(cstruct.SessionName)
            XCTAssertNil(cstruct.SessionHandle)
            XCTAssertNil(cstruct.LocalUserId)
            XCTAssertEqual(cstruct.bPresenceEnabled, .zero)
            let swiftObject = try XCTUnwrap(try SwiftEOS_Sessions_JoinSessionOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, .zero)
            XCTAssertNil(swiftObject.SessionName)
            XCTAssertNil(swiftObject.SessionHandle)
            XCTAssertNil(swiftObject.LocalUserId)
            XCTAssertEqual(swiftObject.bPresenceEnabled, false) }
    }
}
