import XCTest
import EOSSDK
@testable import SwiftEOS

public final class SwiftEOS_AntiCheatServer_ReceiveMessageFromClientOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_AntiCheatServer_ReceiveMessageFromClientOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_AntiCheatServer_ReceiveMessageFromClientOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertNil(cstruct.ClientHandle)
            XCTAssertEqual(cstruct.DataLengthBytes, .zero)
            XCTAssertNil(cstruct.Data)
            let swiftObject = try XCTUnwrap(try SwiftEOS_AntiCheatServer_ReceiveMessageFromClientOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, .zero)
            XCTAssertNil(swiftObject.ClientHandle)
            XCTAssertNil(swiftObject.Data) }
    }
}
