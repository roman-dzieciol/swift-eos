import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_AntiCheatServer_GetProtectMessageOutputLengthOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_AntiCheatServer_GetProtectMessageOutputLengthOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_AntiCheatServer_GetProtectMessageOutputLengthOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, EOS_ANTICHEATSERVER_GETPROTECTMESSAGEOUTPUTLENGTH_API_LATEST)
            XCTAssertEqual(cstruct.DataLengthBytes, .zero)
            let swiftObject = try XCTUnwrap(try SwiftEOS_AntiCheatServer_GetProtectMessageOutputLengthOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, EOS_ANTICHEATSERVER_GETPROTECTMESSAGEOUTPUTLENGTH_API_LATEST)
            XCTAssertEqual(swiftObject.DataLengthBytes, .zero) }
    }
}
