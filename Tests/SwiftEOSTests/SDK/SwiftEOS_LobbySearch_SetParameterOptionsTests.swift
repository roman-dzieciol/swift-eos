import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_LobbySearch_SetParameterOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_LobbySearch_SetParameterOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_LobbySearch_SetParameterOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertNil(cstruct.Parameter)
            XCTAssertEqual(cstruct.ComparisonOp, .init(rawValue: .zero)!)
            let swiftObject = try SwiftEOS_LobbySearch_SetParameterOptions(sdkObject: cstruct) }
    }
}
