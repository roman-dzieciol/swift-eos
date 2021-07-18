import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_Sessions_JoinSessionAcceptedCallbackInfoTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Sessions_JoinSessionAcceptedCallbackInfo() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Sessions_JoinSessionAcceptedCallbackInfo.self) { cstruct in
            XCTAssertNil(cstruct.ClientData)
            XCTAssertNil(cstruct.LocalUserId)
            XCTAssertEqual(cstruct.UiEventId, .zero)
            let swiftObject = try XCTUnwrap(try SwiftEOS_Sessions_JoinSessionAcceptedCallbackInfo(sdkObject: cstruct))
            XCTAssertNil(swiftObject.LocalUserId)
            XCTAssertEqual(swiftObject.UiEventId, .zero) }
    }
}
