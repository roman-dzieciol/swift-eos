import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_P2P_CloseConnectionTests: XCTestCase {
    public func testEOS_P2P_CloseConnection_Null() throws {
        try autoreleasepool { 
            TestGlobals.current.reset()
            
            // Given implementation for SDK function
            __on_EOS_P2P_CloseConnection = { Handle, Options in
                XCTAssertEqual(Handle, .nonZeroPointer)
                XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
                XCTAssertNil(Options!.pointee.LocalUserId)
                XCTAssertNil(Options!.pointee.RemoteUserId)
                XCTAssertNil(Options!.pointee.SocketId)
                TestGlobals.current.sdkReceived.append("EOS_P2P_CloseConnection")
                return .zero
            }
            defer { __on_EOS_P2P_CloseConnection = nil }
            
            // Given Actor
            let object: SwiftEOS_P2P_Actor = SwiftEOS_P2P_Actor(Handle: .nonZeroPointer)
            
            // When SDK function is called
            try object.CloseConnection(
                LocalUserId: nil,
                RemoteUserId: nil,
                SocketId: nil
            )
            
            // Then
            XCTAssertEqual(TestGlobals.current.sdkReceived, ["EOS_P2P_CloseConnection"])
        }
    }
}
