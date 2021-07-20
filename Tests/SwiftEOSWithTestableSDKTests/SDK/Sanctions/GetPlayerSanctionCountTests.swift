import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Sanctions_GetPlayerSanctionCountTests: XCTestCase {
    public func testEOS_Sanctions_GetPlayerSanctionCount_Null() throws {
        try autoreleasepool { 
            GTest.current.reset()
            
            // Given implementation for SDK function
            __on_EOS_Sanctions_GetPlayerSanctionCount = { Handle, Options in
                XCTAssertNil(Handle)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_SANCTIONS_GETPLAYERSANCTIONCOUNT_API_LATEST)
                XCTAssertNil(Options!.pointee.TargetUserId)
                GTest.current.sdkReceived.append("EOS_Sanctions_GetPlayerSanctionCount")
                return .zero
            }
            defer { __on_EOS_Sanctions_GetPlayerSanctionCount = nil }
            
            // Given Actor
            let object: SwiftEOS_Sanctions_Actor = SwiftEOS_Sanctions_Actor(Handle: nil)
            
            // When SDK function is called
            let result: Int = try object.GetPlayerSanctionCount(TargetUserId: nil)
            
            // Then
            XCTAssertEqual(GTest.current.sdkReceived, ["EOS_Sanctions_GetPlayerSanctionCount"])
            XCTAssertEqual(result, .zero)
        }
        
        // Then
        XCTAssertEqual(GTest.current.sdkReceived, ["EOS_Sanctions_GetPlayerSanctionCount"])
    }
}
