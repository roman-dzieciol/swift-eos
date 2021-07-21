import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_LobbySearch_SetParameterOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_LobbySearch_SetParameterOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_LobbySearch_SetParameterOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertNil(cstruct.Parameter)
            XCTAssertEqual(cstruct.ComparisonOp, .zero)
            let swiftObject = try XCTUnwrap(try SwiftEOS_LobbySearch_SetParameterOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, .zero)
            XCTAssertNil(swiftObject.Parameter)
            XCTAssertEqual(swiftObject.ComparisonOp, .zero) }
    }
}
