import XCTest
import EOSSDK
@testable import SwiftEOS

public final class SwiftEOS_Mods_InstallModCallbackInfoTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Mods_InstallModCallbackInfo() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Mods_InstallModCallbackInfo.self) { cstruct in
            XCTAssertEqual(cstruct.ResultCode, .zero)
            XCTAssertNil(cstruct.LocalUserId)
            XCTAssertNil(cstruct.ClientData)
            XCTAssertNil(cstruct.Mod)
            let swiftObject = try XCTUnwrap(try SwiftEOS_Mods_InstallModCallbackInfo(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ResultCode, .zero)
            XCTAssertNil(swiftObject.LocalUserId)
            XCTAssertNil(swiftObject.Mod) }
    }
}
