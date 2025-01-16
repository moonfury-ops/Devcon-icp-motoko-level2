import Nat "mo:base/Nat";
import Debug "mo:base/Debug";

actor WebsiteBackend {

  // Stable state: Tracks the total number of visits
  stable var visitCount: Nat = 0;

  // Function: Increment the visit count and return the updated count
  public func recordVisit() : async Nat {
    visitCount += 1; // Increment the visit count
    return visitCount;
  };

  // Query: Retrieve the current visit count
  public query func getVisitCount() : async Nat {
    return visitCount;
  };

  // Query: Greet a visitor (optional function)
  public query func greet() : async Text {
    let message = "Welcome to our website! Total visits so far: " # Nat.toText(visitCount);
    Debug.print("Greet called. Message: " # message);
    return message;
  };

};