import Principal "mo:base/Principal";
import Asset "mo:assets-api";
import frontend "canister:frontend";

actor class Main() = this {
  public composite query func main() : async () {
    // let a = getIndirectCaller().b44c4a9beec74e1c8a7acbe46256f92f_isInitialized();
    // let b = getSimpleIndirect().b44c4a9beec74e1c8a7acbe46256f92f_isInitialized();
    let a = this.f();
    let b = this.f();
    let c = do {
      // let ?pkg = installedPackages.get(installationId) else {
      //   Debug.trap("package manager is not yet installed");
      // };
      // let ?frontend = pkg.modules.get("frontend") else {
      //   Debug.trap("programming error");
      // };
      // let f: Asset.AssetCanister = actor(Principal.toText(frontend));
      frontend.get({key = "/index.html"; accept_encodings = ["gzip"]});
    };
    ignore {{a0 = await a; b0 = await b; c0 = await c}};
  };

  public query func f(): async () {};
};
