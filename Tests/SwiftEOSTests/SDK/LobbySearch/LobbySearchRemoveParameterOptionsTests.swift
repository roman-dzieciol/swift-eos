import XCTest
import EOSSDK
@testable import SwiftEOS

public final class SwiftEOS_LobbySearch_RemoveParameterOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_LobbySearch_RemoveParameterOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_LobbySearch_RemoveParameterOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertNil(cstruct.Key)
            XCTAssertEqual(cstruct.ComparisonOp, .zero)
            let swiftObject = try XCTUnwrap(try SwiftEOS_LobbySearch_RemoveParameterOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, .zero)
            XCTAssertNil(swiftObject.Key)
            XCTAssertEqual(swiftObject.ComparisonOp, .zero) }
    }
}
