import XCTest
import EOSSDK
@testable import SwiftEOS

public final class SwiftEOS_Sessions_CreateSessionModificationOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Sessions_CreateSessionModificationOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Sessions_CreateSessionModificationOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertNil(cstruct.SessionName)
            XCTAssertNil(cstruct.BucketId)
            XCTAssertEqual(cstruct.MaxPlayers, .zero)
            XCTAssertNil(cstruct.LocalUserId)
            XCTAssertEqual(cstruct.bPresenceEnabled, .zero)
            XCTAssertNil(cstruct.SessionId)
            let swiftObject = try XCTUnwrap(try SwiftEOS_Sessions_CreateSessionModificationOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, .zero)
            XCTAssertNil(swiftObject.SessionName)
            XCTAssertNil(swiftObject.BucketId)
            XCTAssertEqual(swiftObject.MaxPlayers, .zero)
            XCTAssertNil(swiftObject.LocalUserId)
            XCTAssertEqual(swiftObject.bPresenceEnabled, false)
            XCTAssertNil(swiftObject.SessionId) }
    }
}
