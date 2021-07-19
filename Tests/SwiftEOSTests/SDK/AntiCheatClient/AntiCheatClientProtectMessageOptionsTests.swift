import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_AntiCheatClient_ProtectMessageOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_AntiCheatClient_ProtectMessageOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_AntiCheatClient_ProtectMessageOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, EOS_ANTICHEATCLIENT_PROTECTMESSAGE_API_LATEST)
            XCTAssertEqual(cstruct.DataLengthBytes, .zero)
            XCTAssertNil(cstruct.Data)
            XCTAssertEqual(cstruct.OutBufferSizeBytes, .zero)
            let swiftObject = try XCTUnwrap(try SwiftEOS_AntiCheatClient_ProtectMessageOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, EOS_ANTICHEATCLIENT_PROTECTMESSAGE_API_LATEST)
            XCTAssertNil(swiftObject.Data)
            XCTAssertEqual(swiftObject.OutBufferSizeBytes, .zero) }
    }
}
