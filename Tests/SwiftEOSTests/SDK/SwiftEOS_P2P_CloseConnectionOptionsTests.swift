import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_P2P_CloseConnectionOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_P2P_CloseConnectionOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_P2P_CloseConnectionOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertNil(cstruct.LocalUserId)
            XCTAssertNil(cstruct.RemoteUserId)
            XCTAssertNil(cstruct.SocketId)
            let swiftObject = try SwiftEOS_P2P_CloseConnectionOptions(sdkObject: cstruct) }
    }
}
