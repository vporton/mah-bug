import Principal "mo:base/Principal";
import Asset "mo:assets-api";
import frontend "canister:frontend";

actor {
  public composite query func main() : async () {
    let a = frontend.get({key = "/index.html"; accept_encodings = ["identity"]});
    ignore await a;
  };
};
