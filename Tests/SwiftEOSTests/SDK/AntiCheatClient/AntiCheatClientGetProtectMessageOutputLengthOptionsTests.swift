import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_AntiCheatClient_GetProtectMessageOutputLengthOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_AntiCheatClient_GetProtectMessageOutputLengthOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_AntiCheatClient_GetProtectMessageOutputLengthOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, EOS_ANTICHEATCLIENT_GETPROTECTMESSAGEOUTPUTLENGTH_API_LATEST)
            XCTAssertEqual(cstruct.DataLengthBytes, .zero)
            let swiftObject = try XCTUnwrap(try SwiftEOS_AntiCheatClient_GetProtectMessageOutputLengthOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, EOS_ANTICHEATCLIENT_GETPROTECTMESSAGEOUTPUTLENGTH_API_LATEST)
            XCTAssertEqual(swiftObject.DataLengthBytes, .zero) }
    }
}
