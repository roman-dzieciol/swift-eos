import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_P2P_AcceptConnectionOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_P2P_AcceptConnectionOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_P2P_AcceptConnectionOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertNil(cstruct.LocalUserId)
            XCTAssertNil(cstruct.RemoteUserId)
            XCTAssertNil(cstruct.SocketId)
            let swiftObject = try SwiftEOS_P2P_AcceptConnectionOptions(sdkObject: cstruct) }
    }
}
