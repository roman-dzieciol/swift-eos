import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_AntiCheatCommon_OnClientActionRequiredCallbackInfoTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_AntiCheatCommon_OnClientActionRequiredCallbackInfo() throws {
        try withZeroInitializedCStruct(type: _tagEOS_AntiCheatCommon_OnClientActionRequiredCallbackInfo.self) { cstruct in
            XCTAssertNil(cstruct.ClientData)
            XCTAssertNil(cstruct.ClientHandle)
            XCTAssertEqual(cstruct.ClientAction, .init(rawValue: .zero)!)
            XCTAssertEqual(cstruct.ActionReasonCode, .init(rawValue: .zero)!)
            XCTAssertNil(cstruct.ActionReasonDetailsString)
            let swiftObject = try XCTUnwrap(try SwiftEOS_AntiCheatCommon_OnClientActionRequiredCallbackInfo(sdkObject: cstruct))
            XCTAssertNil(swiftObject.ClientHandle)
            XCTAssertEqual(swiftObject.ClientAction, .init(rawValue: .zero)!)
            XCTAssertEqual(swiftObject.ActionReasonCode, .init(rawValue: .zero)!)
            XCTAssertNil(swiftObject.ActionReasonDetailsString) }
    }
}
