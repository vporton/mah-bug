import frontend "canister:frontend";

actor class Main() = this {
  public composite query func main() : async () {
    let b = this.f();
    let c = frontend.get({key = "/index.html"; accept_encodings = ["identity"]});
    ignore {{b0 = await b; c0 = await c}};
  };

  public query func f(): async () {};
};
