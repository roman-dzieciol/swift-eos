import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_P2P_CloseConnectionsTests: XCTestCase {
    public func testEOS_P2P_CloseConnections_Null() throws {
        TestGlobals.reset()
        __on_EOS_P2P_CloseConnections = { Handle, Options in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
            XCTAssertNil(Options!.pointee.LocalUserId)
            XCTAssertNil(Options!.pointee.SocketId)
            TestGlobals.sdkReceived.append("EOS_P2P_CloseConnections")
            return .init(rawValue: .zero)! }
        let object: SwiftEOS_P2P_Actor = SwiftEOS_P2P_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        try object.CloseConnections(
            LocalUserId: nil,
            SocketId: nil
        )
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_P2P_CloseConnections"])
        XCTAssertEqual(TestGlobals.swiftReceived, [])
    }
}
