import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public final class SwiftEOS_Sessions_DumpSessionStateTests: XCTestCase {
    public func testEOS_Sessions_DumpSessionState_Null() throws {
        try autoreleasepool { 
            GTest.current.reset()
            
            // Given implementation for SDK function
            __on_EOS_Sessions_DumpSessionState = { Handle, Options in
                GTest.current.sdkReceived.append("EOS_Sessions_DumpSessionState")
                XCTAssertNil(Handle)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_SESSIONS_DUMPSESSIONSTATE_API_LATEST)
                XCTAssertNil(Options!.pointee.SessionName)
                return .zero
            }
            defer { __on_EOS_Sessions_DumpSessionState = nil }
            
            // Given Actor
            let object: SwiftEOS_Sessions_Actor = SwiftEOS_Sessions_Actor(Handle: nil)
            
            // When SDK function is called
            try object.DumpSessionState(SessionName: nil)
            
            // Then
            XCTAssertEqual(GTest.current.sdkReceived, ["EOS_Sessions_DumpSessionState"])
        }
        
        // Then
        XCTAssertEqual(GTest.current.sdkReceived, ["EOS_Sessions_DumpSessionState"])
    }
}
