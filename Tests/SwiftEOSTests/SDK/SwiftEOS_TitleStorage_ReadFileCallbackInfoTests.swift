import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_TitleStorage_ReadFileCallbackInfoTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_TitleStorage_ReadFileCallbackInfo() throws {
        try withZeroInitializedCStruct(type: _tagEOS_TitleStorage_ReadFileCallbackInfo.self) { cstruct in
            XCTAssertEqual(cstruct.ResultCode, .init(rawValue: .zero)!)
            XCTAssertNil(cstruct.ClientData)
            XCTAssertNil(cstruct.LocalUserId)
            XCTAssertNil(cstruct.Filename)
            let swiftObject = try SwiftEOS_TitleStorage_ReadFileCallbackInfo(sdkObject: cstruct) }
    }
}
