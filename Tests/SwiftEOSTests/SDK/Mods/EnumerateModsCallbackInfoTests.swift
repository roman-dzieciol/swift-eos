import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_Mods_EnumerateModsCallbackInfoTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Mods_EnumerateModsCallbackInfo() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Mods_EnumerateModsCallbackInfo.self) { cstruct in
            XCTAssertEqual(cstruct.ResultCode, .zero)
            XCTAssertNil(cstruct.LocalUserId)
            XCTAssertNil(cstruct.ClientData)
            XCTAssertEqual(cstruct.Type, .zero)
            let swiftObject = try XCTUnwrap(try SwiftEOS_Mods_EnumerateModsCallbackInfo(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ResultCode, .zero)
            XCTAssertNil(swiftObject.LocalUserId)
            XCTAssertEqual(swiftObject.Type, .zero) }
    }
}
