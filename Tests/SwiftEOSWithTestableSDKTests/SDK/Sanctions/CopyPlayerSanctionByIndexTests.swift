import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Sanctions_CopyPlayerSanctionByIndexTests: XCTestCase {
    public func testEOS_Sanctions_CopyPlayerSanctionByIndex_Null() throws {
        try autoreleasepool { 
            GTest.current.reset()
            
            // Given implementation for SDK function
            __on_EOS_Sanctions_CopyPlayerSanctionByIndex = { Handle, Options, OutSanction in
                GTest.current.sdkReceived.append("EOS_Sanctions_CopyPlayerSanctionByIndex")
                XCTAssertNil(Handle)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_SANCTIONS_COPYPLAYERSANCTIONBYINDEX_API_LATEST)
                XCTAssertNil(Options!.pointee.TargetUserId)
                XCTAssertEqual(Options!.pointee.SanctionIndex, .zero)
                XCTAssertNotNil(OutSanction)
                return .zero
            }
            defer { __on_EOS_Sanctions_CopyPlayerSanctionByIndex = nil }
            
            // Given Actor
            let object: SwiftEOS_Sanctions_Actor = SwiftEOS_Sanctions_Actor(Handle: nil)
            
            // When SDK function is called
            try XCTAssertThrowsError(try object.CopyPlayerSanctionByIndex(
                    TargetUserId: nil,
                    SanctionIndex: .zero
                )) { error in
                guard case SwiftEOSError.unexpectedNilResult = error else { return XCTFail("unexpected \(error)") }
            }
            
            // Then
            XCTAssertEqual(GTest.current.sdkReceived, ["EOS_Sanctions_CopyPlayerSanctionByIndex"])
        }
        
        // Then
        XCTAssertEqual(GTest.current.sdkReceived, ["EOS_Sanctions_CopyPlayerSanctionByIndex"])
    }
}
