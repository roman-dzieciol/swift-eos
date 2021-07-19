import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_P2P_AcceptConnectionTests: XCTestCase {
    public func testEOS_P2P_AcceptConnection_Null() throws {
        TestGlobals.reset()
        __on_EOS_P2P_AcceptConnection = { Handle, Options in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
            XCTAssertNil(Options!.pointee.LocalUserId)
            XCTAssertNil(Options!.pointee.RemoteUserId)
            XCTAssertNil(Options!.pointee.SocketId)
            TestGlobals.sdkReceived.append("EOS_P2P_AcceptConnection")
            return .init(rawValue: .zero)! }
        let object: SwiftEOS_P2P_Actor = SwiftEOS_P2P_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        try object.AcceptConnection(
            LocalUserId: nil,
            RemoteUserId: nil,
            SocketId: nil
        )
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_P2P_AcceptConnection"])
        XCTAssertEqual(TestGlobals.swiftReceived, [])
    }
}
