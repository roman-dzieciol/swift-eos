import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public final class SwiftEOS_Stats_GetStatsCountTests: XCTestCase {
    public func testEOS_Stats_GetStatsCount_Null() throws {
        try autoreleasepool { 
            GTest.current.reset()
            
            // Given implementation for SDK function
            __on_EOS_Stats_GetStatsCount = { Handle, Options in
                GTest.current.sdkReceived.append("EOS_Stats_GetStatsCount")
                XCTAssertNil(Handle)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_STATS_GETSTATSCOUNT_API_LATEST)
                XCTAssertNil(Options!.pointee.TargetUserId)
                return .zero
            }
            defer { __on_EOS_Stats_GetStatsCount = nil }
            
            // Given Actor
            let object: SwiftEOS_Stats_Actor = SwiftEOS_Stats_Actor(Handle: nil)
            
            // When SDK function is called
            let result: Int = try object.GetStatsCount(TargetUserId: nil)
            
            // Then
            XCTAssertEqual(GTest.current.sdkReceived, ["EOS_Stats_GetStatsCount"])
            XCTAssertEqual(result, .zero)
        }
        
        // Then
        XCTAssertEqual(GTest.current.sdkReceived, ["EOS_Stats_GetStatsCount"])
    }
}
