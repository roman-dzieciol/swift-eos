import XCTest
import EOSSDK
@testable import SwiftEOS

public final class SwiftEOS_Metrics_BeginPlayerSessionOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Metrics_BeginPlayerSessionOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Metrics_BeginPlayerSessionOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertEqual(cstruct.AccountIdType, .zero)
            XCTAssertNil(cstruct.AccountId.Epic)
            XCTAssertNil(cstruct.AccountId.External)
            XCTAssertNil(cstruct.DisplayName)
            XCTAssertEqual(cstruct.ControllerType, .zero)
            XCTAssertNil(cstruct.ServerIp)
            XCTAssertNil(cstruct.GameSessionId)
            let swiftObject = try XCTUnwrap(try SwiftEOS_Metrics_BeginPlayerSessionOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, .zero)
            XCTAssertEqual(swiftObject.AccountIdType, .zero)
            XCTAssertNil(swiftObject.AccountId.Epic)
            XCTAssertNil(swiftObject.AccountId.External)
            XCTAssertNil(swiftObject.DisplayName)
            XCTAssertEqual(swiftObject.ControllerType, .zero)
            XCTAssertNil(swiftObject.ServerIp)
            XCTAssertNil(swiftObject.GameSessionId) }
    }
}
