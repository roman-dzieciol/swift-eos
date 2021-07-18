import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_AntiCheatClient_ReceiveMessageFromServerOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_AntiCheatClient_ReceiveMessageFromServerOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_AntiCheatClient_ReceiveMessageFromServerOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertEqual(cstruct.DataLengthBytes, .zero)
            XCTAssertNil(cstruct.Data)
            let swiftObject = try XCTUnwrap(try SwiftEOS_AntiCheatClient_ReceiveMessageFromServerOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, .zero)
            XCTAssertNil(swiftObject.Data) }
    }
}
