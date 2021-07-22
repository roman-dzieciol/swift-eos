import XCTest
import EOSSDK
@testable import SwiftEOS

public final class SwiftEOS_Presence_AddNotifyJoinGameAcceptedOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Presence_AddNotifyJoinGameAcceptedOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Presence_AddNotifyJoinGameAcceptedOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            let swiftObject = try XCTUnwrap(try SwiftEOS_Presence_AddNotifyJoinGameAcceptedOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, .zero) }
    }
}
