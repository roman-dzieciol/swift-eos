import XCTest
import EOSSDK
@testable import SwiftEOS

public final class SwiftEOS_LobbySearch_FindCallbackInfoTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_LobbySearch_FindCallbackInfo() throws {
        try withZeroInitializedCStruct(type: _tagEOS_LobbySearch_FindCallbackInfo.self) { cstruct in
            XCTAssertEqual(cstruct.ResultCode, .zero)
            XCTAssertNil(cstruct.ClientData)
            let swiftObject = try XCTUnwrap(try SwiftEOS_LobbySearch_FindCallbackInfo(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ResultCode, .zero) }
    }
}
