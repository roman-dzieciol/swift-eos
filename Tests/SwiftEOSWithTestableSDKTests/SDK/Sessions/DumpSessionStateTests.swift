import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Sessions_DumpSessionStateTests: XCTestCase {
    public func testEOS_Sessions_DumpSessionState_Null() throws {
        try autoreleasepool { 
            TestGlobals.current.reset()
            
            // Given implementation for SDK function
            __on_EOS_Sessions_DumpSessionState = { Handle, Options in
                XCTAssertEqual(Handle, .nonZeroPointer)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_SESSIONS_DUMPSESSIONSTATE_API_LATEST)
                XCTAssertNil(Options!.pointee.SessionName)
                TestGlobals.current.sdkReceived.append("EOS_Sessions_DumpSessionState")
                return .zero
            }
            defer { __on_EOS_Sessions_DumpSessionState = nil }
            
            // Given Actor
            let object: SwiftEOS_Sessions_Actor = SwiftEOS_Sessions_Actor(Handle: .nonZeroPointer)
            
            // When SDK function is called
            try object.DumpSessionState(SessionName: nil)
            
            // Then
            XCTAssertEqual(TestGlobals.current.sdkReceived, ["EOS_Sessions_DumpSessionState"])
        }
    }
}
