//
//  HomeModuleAPIManager.swift
//  Shoryan
//
//  Created by Ahmed AlSai on 21/03/2021.
//

import Foundation


class HomeModuleAPIManager {
    static func getUserData(accessToken: String, completionHandler: @escaping (Result<GetUserDataResponse, NetworkError>) -> ()){
        
        Network.loadJSONFile(fromURL: Constants.endPoint, path: Constants.getUserDataPath, token: accessToken, method: .GET, type: GetUserDataResponse.self) { (result) in
            completionHandler(result)
        }
    }
    
    static func listAllRequests(accessToken: String, completionHandler: @escaping (Result<AllRequestsResponse, NetworkError>) -> ()){
        
        Network.loadJSONFile(fromURL: Constants.endPoint, path: Constants.allRequestsPath, token: accessToken, method: .GET, type: AllRequestsResponse.self) { (result) in
            completionHandler(result)
        }
        
    }
    
    static func getPendingRequest(accessToken: String, completionHandler: @escaping (Result<PendingRequestResponse, NetworkError>) -> ()){
        
        Network.loadJSONFile(fromURL: Constants.endPoint, path: Constants.pendingRequestPath, token: accessToken, method: .GET, type: PendingRequestResponse.self) { (result) in
            completionHandler(result)
        }
        
    }
    
    static func getRewards(accessToken: String, completionHandler: @escaping (Result<AllRewardsResponse, NetworkError>) -> ()){
        
        Network.loadJSONFile(fromURL: Constants.endPoint, path: Constants.allRewardsPath, token: accessToken, method: .GET, type: AllRewardsResponse.self) { (result) in
            completionHandler(result)
        }
    }
    
    static func getDetailedReward(accessToken: String, rewardID: String, completionHandler: @escaping (Result<DetailedRewardResponse, NetworkError>) -> ()){
        
        let path = String(format: Constants.detailedRewardPath, rewardID)
        Network.loadJSONFile(fromURL: Constants.endPoint, path: path, token: accessToken, method: .GET, type: DetailedRewardResponse.self) { (result) in
            completionHandler(result)
        }
    }
}
