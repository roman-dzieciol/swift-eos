import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_Mods_InstallModCallbackInfoTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Mods_InstallModCallbackInfo() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Mods_InstallModCallbackInfo.self) { cstruct in
            XCTAssertEqual(cstruct.ResultCode, .init(rawValue: .zero)!)
            XCTAssertNil(cstruct.LocalUserId)
            XCTAssertNil(cstruct.ClientData)
            XCTAssertNil(cstruct.Mod)
            let swiftObject = try XCTUnwrap(try SwiftEOS_Mods_InstallModCallbackInfo(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ResultCode, .init(rawValue: .zero)!)
            XCTAssertNil(swiftObject.LocalUserId)
            XCTAssertNil(swiftObject.Mod) }
    }
}
