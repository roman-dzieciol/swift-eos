import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_LobbyDetails_GetMemberByIndexTests: XCTestCase {
    public func testEOS_LobbyDetails_GetMemberByIndex_Null() throws {
        try autoreleasepool { 
            TestGlobals.current.reset()
            
            // Given implementation for SDK release function
            __on_EOS_LobbyDetails_Release = { LobbyHandle in
                XCTAssertNil(LobbyHandle)
                TestGlobals.current.sdkReceived.append("EOS_LobbyDetails_Release")
            }
            
            // Given implementation for SDK function
            __on_EOS_LobbyDetails_GetMemberByIndex = { Handle, Options in
                XCTAssertEqual(Handle, .nonZeroPointer)
                XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
                XCTAssertEqual(Options!.pointee.MemberIndex, .zero)
                TestGlobals.current.sdkReceived.append("EOS_LobbyDetails_GetMemberByIndex")
                return .nonZeroPointer
            }
            defer { __on_EOS_LobbyDetails_GetMemberByIndex = nil }
            
            // Given Actor
            let object: SwiftEOS_LobbyDetails_Actor = SwiftEOS_LobbyDetails_Actor(Handle: .nonZeroPointer)
            
            // When SDK function is called
            let result: EOS_ProductUserId = try object.GetMemberByIndex(MemberIndex: .zero)
            
            // Then
            XCTAssertEqual(TestGlobals.current.sdkReceived, ["EOS_LobbyDetails_GetMemberByIndex", "EOS_LobbyDetails_Release"])
            XCTAssertNil(result)
        }
        
        // Then
        __on_EOS_LobbyDetails_Release = nil
    }
}
