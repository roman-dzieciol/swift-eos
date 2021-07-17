import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_Metrics_BeginPlayerSessionOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Metrics_BeginPlayerSessionOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Metrics_BeginPlayerSessionOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertEqual(cstruct.AccountIdType, .init(rawValue: .zero)!)
            XCTAssertNil(cstruct.AccountId.Epic)
            XCTAssertNil(cstruct.AccountId.External)
            XCTAssertNil(cstruct.DisplayName)
            XCTAssertEqual(cstruct.ControllerType, .init(rawValue: .zero)!)
            XCTAssertNil(cstruct.ServerIp)
            XCTAssertNil(cstruct.GameSessionId)
            let swiftObject = try XCTUnwrap(try SwiftEOS_Metrics_BeginPlayerSessionOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, .zero)
            XCTAssertEqual(swiftObject.AccountIdType, .init(rawValue: .zero)!)
            XCTAssertNil(swiftObject.AccountId.Epic)
            XCTAssertNil(swiftObject.AccountId.External)
            XCTAssertNil(swiftObject.DisplayName)
            XCTAssertEqual(swiftObject.ControllerType, .init(rawValue: .zero)!)
            XCTAssertNil(swiftObject.ServerIp)
            XCTAssertNil(swiftObject.GameSessionId) }
    }
}
