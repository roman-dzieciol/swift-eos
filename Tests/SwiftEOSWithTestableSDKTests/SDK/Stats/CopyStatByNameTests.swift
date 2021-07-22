import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public final class SwiftEOS_Stats_CopyStatByNameTests: XCTestCase {
    public func testEOS_Stats_CopyStatByName_Null() throws {
        try autoreleasepool { 
            GTest.current.reset()
            
            // Given implementation for SDK function
            __on_EOS_Stats_CopyStatByName = { Handle, Options, OutStat in
                GTest.current.sdkReceived.append("EOS_Stats_CopyStatByName")
                XCTAssertNil(Handle)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_STATS_COPYSTATBYNAME_API_LATEST)
                XCTAssertNil(Options!.pointee.TargetUserId)
                XCTAssertNil(Options!.pointee.Name)
                XCTAssertNotNil(OutStat)
                return .zero
            }
            defer { __on_EOS_Stats_CopyStatByName = nil }
            
            // Given Actor
            let object: SwiftEOS_Stats_Actor = SwiftEOS_Stats_Actor(Handle: nil)
            
            // When SDK function is called
            try XCTAssertThrowsError(try object.CopyStatByName(
                    TargetUserId: nil,
                    Name: nil
                )) { error in
                guard case SwiftEOSError.unexpectedNilResult = error else { return XCTFail("unexpected \(error)") }
            }
            
            // Then
            XCTAssertEqual(GTest.current.sdkReceived, ["EOS_Stats_CopyStatByName"])
        }
        
        // Then
        XCTAssertEqual(GTest.current.sdkReceived, ["EOS_Stats_CopyStatByName"])
    }
}
