import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_P2P_SocketIdTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_P2P_SocketId() throws {
        try withZeroInitializedCStruct(type: _tagEOS_P2P_SocketId.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, EOS_P2P_SOCKETID_API_LATEST)
            XCTAssertEqual(String_33(tuple: cstruct.SocketName), .zero)
            let swiftObject = try XCTUnwrap(try SwiftEOS_P2P_SocketId(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, EOS_P2P_SOCKETID_API_LATEST)
            XCTAssertEqual(swiftObject.SocketName, .zero) }
    }
}
