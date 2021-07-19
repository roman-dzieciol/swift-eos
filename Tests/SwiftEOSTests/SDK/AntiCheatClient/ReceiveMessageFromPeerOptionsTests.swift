import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_AntiCheatClient_ReceiveMessageFromPeerOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_AntiCheatClient_ReceiveMessageFromPeerOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_AntiCheatClient_ReceiveMessageFromPeerOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, EOS_ANTICHEATCLIENT_RECEIVEMESSAGEFROMPEER_API_LATEST)
            XCTAssertNil(cstruct.PeerHandle)
            XCTAssertEqual(cstruct.DataLengthBytes, .zero)
            XCTAssertNil(cstruct.Data)
            let swiftObject = try XCTUnwrap(try SwiftEOS_AntiCheatClient_ReceiveMessageFromPeerOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, EOS_ANTICHEATCLIENT_RECEIVEMESSAGEFROMPEER_API_LATEST)
            XCTAssertNil(swiftObject.PeerHandle)
            XCTAssertNil(swiftObject.Data) }
    }
}
