import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public final class SwiftEOS_P2P_CloseConnectionTests: XCTestCase {
    public func testEOS_P2P_CloseConnection_Null() throws {
        try autoreleasepool { 
            GTest.current.reset()
            
            // Given implementation for SDK function
            __on_EOS_P2P_CloseConnection = { Handle, Options in
                GTest.current.sdkReceived.append("EOS_P2P_CloseConnection")
                XCTAssertNil(Handle)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_P2P_CLOSECONNECTION_API_LATEST)
                XCTAssertNil(Options!.pointee.LocalUserId)
                XCTAssertNil(Options!.pointee.RemoteUserId)
                XCTAssertNil(Options!.pointee.SocketId)
                return .zero
            }
            defer { __on_EOS_P2P_CloseConnection = nil }
            
            // Given Actor
            let object: SwiftEOS_P2P_Actor = SwiftEOS_P2P_Actor(Handle: nil)
            
            // When SDK function is called
            try object.CloseConnection(
                LocalUserId: nil,
                RemoteUserId: nil,
                SocketId: nil
            )
            
            // Then
            XCTAssertEqual(GTest.current.sdkReceived, ["EOS_P2P_CloseConnection"])
        }
        
        // Then
        XCTAssertEqual(GTest.current.sdkReceived, ["EOS_P2P_CloseConnection"])
    }
}
